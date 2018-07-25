package controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/VerifyCode")  
public class VerifyCodeController {
	
	@RequestMapping("/getVcode.action")
	public void getVcode(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		//�õ���֤��ͼƬ
		BufferedImage img = VeriCodeUtil.getCodePic(120, 30, 200, 250);
		//�õ���֤���ַ���
		String vcode = VeriCodeUtil.getCode();
		//��vcode�浽session��,���������¼�ıȶ�
		req.getSession().setAttribute("vcode", vcode);
		ServletOutputStream outputStream = resp.getOutputStream();
		//��imgͼƬ��jpg����ͨ��outputStream��д��ҳ�������
		ImageIO.write(img, "jpg", outputStream);
		
	}

}