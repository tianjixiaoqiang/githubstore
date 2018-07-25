package controller;

import java.security.MessageDigest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import entity.Mibao;
import entity.User;
import service.MibaoService;
import service.UserService;

@Controller
@RequestMapping("/Login")   
public class LoginController {
@Autowired
private UserService userService; 
@Autowired
private MibaoService mibaoService; 
@Autowired
private HttpSession session;  
@RequestMapping("/")    
public String login(){    
return "login/login";    
}   
@RequestMapping("/toLogin")    
public String toLogin(){    
return "login/login";    
}   
@RequestMapping("/help_center")    
public String help(){    
return "login/help_center";    
}  
@RequestMapping("/password_1")    
public String password_1(){    
return "login/password_1";    
}  
@RequestMapping("/password_2")    
public String password_2(){    
return "login/password_2";    
} 
@RequestMapping("/password_3")    
public String password_3(){    
return "login/password_3";    
} 
@RequestMapping("/password_4")    
public String password_4(){    
return "login/password_4";    
} 
@RequestMapping("/password_5")    
public String password_5(){    
return "login/password_5";    
}
@RequestMapping("/zhuce")    
public String zhuce(){ 
return "login/zhuce";    
} 
@RequestMapping("/getVcode.action")    
public String getVcode(){ 
	return "redirect:/VerifyCode/getVcode.action";    
} 
@RequestMapping("/login") //登陆   
public String login1(String username,String password,String vcode,RedirectAttributes redirectAttributes){
	boolean flag=userService.findUser(username);

	if(flag==false) 
	{
		redirectAttributes.addFlashAttribute("errorMsg","用户未注册");
	return "redirect:/Login/";
	}
	else {
	User u=userService.finduserbyusername(username);
	session.setAttribute("user",u);
	String pw=null;
	String sessionCode=null;
	Object obj=session.getAttribute("vcode");
	if(obj!=null) {
		sessionCode=(String)obj;
	}
	if(!(vcode!= null&&vcode.equalsIgnoreCase(sessionCode)))
	{  
		redirectAttributes.addFlashAttribute("errorMsg","验证码错误！");
		return "redirect:/Login/";
	}
	
	try {
		pw=md5Encode(password);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	
	if(u.getPassword().equals(pw)) {
		
redirectAttributes.addFlashAttribute("user",u);
			return "redirect:/Good/toIndex";  
		}else {
	redirectAttributes.addFlashAttribute("errorMsg","用户名或密码错误！");
	return "redirect:/Login/";   }
	}
}   
@RequestMapping(value="/zhuce1",method = RequestMethod.POST)    //注册
public String zhuce1(User user,RedirectAttributes redirectAttributes){ 
	boolean flag1=userService.findUser(user.getUsername());
	if(flag1==true) {
		redirectAttributes.addFlashAttribute("errorMsg","用户名已存在！");
     return "redirect:/Login/zhuce"; 
   }else {
	   User u1=user;
	   try {
		u1.setPassword(md5Encode(user.getPassword()));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	boolean flag=userService.register(u1);
	if(flag==true) {
		redirectAttributes.addFlashAttribute("errorMsg","注册成功！");
		return "redirect:/Login/";
	}
   
	else {
		redirectAttributes.addFlashAttribute("errorMsg","注册失败");
		return "redirect:/Login/zhuce";
	}
} 
}
public static String md5Encode(String inStr) throws Exception {//MD5加密
	   String salt="hello";
	   inStr=inStr+salt;
        MessageDigest md5 = null;
        try {
            md5 = MessageDigest.getInstance("MD5");
        } catch (Exception e) {
            System.out.println(e.toString());
            e.printStackTrace();
            return "";
        }

        byte[] byteArray = inStr.getBytes("UTF-8");
        byte[] md5Bytes = md5.digest(byteArray);
        StringBuffer hexValue = new StringBuffer();
        for (int i = 0; i < md5Bytes.length; i++) {
            int val = ((int) md5Bytes[i]) & 0xff;
            if (val < 16) {
                hexValue.append("0");
            }
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }
@RequestMapping("/outLogin")              //注销登陆
public String outLogin(HttpSession session){
    //通过session.invalidata()方法来注销当前的session
    session.invalidate();
    return "redirect:/Good/toIndex";
}
@RequestMapping(value="/findp",method = RequestMethod.POST)   
public String findp(String username,String vcode,RedirectAttributes redirectAttributes){
	if(username==null)
	System.out.print(username);
boolean flag=userService.findUser(username);

	if(flag==false) 
	{
		redirectAttributes.addFlashAttribute("errorMsg","用户未注册");
	return "redirect:/Login/password_1";}
	else {
	User user=userService.finduserbyusername(username);
   String sessionCode=null;
	Object obj=session.getAttribute("vcode");
	if(obj!=null) {
		sessionCode=(String)obj;
	}
	if(!(vcode!= null&&vcode.equalsIgnoreCase(sessionCode)))
	{  
		redirectAttributes.addFlashAttribute("errorMsg","验证码错误！");
		return "redirect:/Login/password_1";
	}
	else {
		Mibao m1=mibaoService.FindMibao(user.getMibaoid1());
		session.setAttribute("mibao1",m1);
		session.setAttribute("user",user);
		System.out.println(m1.getValue());
		redirectAttributes.addFlashAttribute("user",user);
		redirectAttributes.addFlashAttribute("mibao1",m1);
		
			return "redirect:/Login/password_2";
	}
	}
} 
@RequestMapping(value="/findp1",method = RequestMethod.POST)   
public String findp1(String value,RedirectAttributes redirectAttributes){
	
	User u=(User) session.getAttribute("user");
	Mibao m2=mibaoService.FindMibao(u.getMibaoid2());
    if(value.equals(u.getAnswer1())) {
		redirectAttributes.addFlashAttribute("mibao2",m2);
		return "redirect:/Login/password_3";
	}
		
	else {
		redirectAttributes.addFlashAttribute("errorMsg","密保答案错误");
		return "redirect:/Login/password_1";
	}
	}
@RequestMapping(value="/findp2",method = RequestMethod.POST)   
public String findp2(String value,RedirectAttributes redirectAttributes){
	
	User u=(User) session.getAttribute("user");
    if(value.equals(u.getAnswer2())) 
    {
	
		return "redirect:/Login/password_4";
	}
		
	else {
		redirectAttributes.addFlashAttribute("errorMsg","密保答案错误");
		return "redirect:/Login/password_3";
	}
	}
@RequestMapping(value="/findp3",method = RequestMethod.POST)   
public String findp3(String password,RedirectAttributes redirectAttributes){
	
	User u=(User) session.getAttribute("user");
	
	try {
		u.setPassword(md5Encode(password));
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	
		redirectAttributes.addFlashAttribute("password",password);
		return "redirect:/Login/password_5";
	}
	
}
