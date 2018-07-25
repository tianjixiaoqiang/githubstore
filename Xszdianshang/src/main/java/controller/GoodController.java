package controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Good;
import service.IGoodService;
import vo.IndexGoodsVo;
import vo.ListGoodsVo;

@Controller
@RequestMapping("/Good") 
public class GoodController {
	int currentpage=1;
	@Autowired
	private IGoodService goodService;
	
	@Autowired
	private HttpSession session;
	@RequestMapping("/") 
	public String index2(Model model)throws Exception{ 
		return "redirect:/Good/toIndex"; 
	} 
	
	@RequestMapping("/toIndex") 
	public String index(Model model)throws Exception{ 
		IndexGoodsVo goods=goodService.selectIndexGoods();
		model.addAttribute("goods",goods);
		List<Good> hotgoods=goodService.selectHotgoods();
		session.setAttribute("hotgoods", hotgoods);
		return "good/index"; 
	} 
	
	@RequestMapping("/toXq")
	public String toXq(int id)throws Exception{ 
		Good good=goodService.selectXqGood(id);
		session.setAttribute("good", good);
		
		return "/bookgouwuche/xq"; 
	} 
	@RequestMapping("/list")
	public String list(HttpServletRequest req,Model model)throws Exception{ 
		List<Good> goods=(List<Good>) session.getAttribute("fenleigoods");
		
		String p = req.getParameter("currentPage");
        int page1;
        try {
            //当前页数
            page1 = Integer.valueOf(p);
        } catch (NumberFormatException e) {
            page1 = 1;
        }
        //用户总数
        int totalGoods = goods.size();
        //每页用户数
        int goodsPerpage1 = 12;
        currentpage=1;
        //总页数
        int totalpages1 = totalGoods % goodsPerpage1 == 0 ? totalGoods / goodsPerpage1 : totalGoods / goodsPerpage1 + 1;
        //本页起始用户序号
        int beginIndex = (page1 - 1) * goodsPerpage1;
        //本页末尾用户序号的下一个
        int endIndex = beginIndex + goodsPerpage1;
        if (endIndex > totalGoods)
            endIndex = totalGoods;
        /*req.setAttribute("totalGoods", totalGoods);
        req.setAttribute("goodsPerpage1", goodsPerpage1);
        req.setAttribute("totalpage1s", totalpage1s);
        req.setAttribute("beginIndex", beginIndex);
        req.setAttribute("endIndex", endIndex);
        req.setAttribute("page1", page1);
        req.setAttribute("goods", goods);   */  
        ListGoodsVo page=new ListGoodsVo();
        page.setRows(goods);
        page.setTotal(totalGoods);
        page.setCurrentPage(page1);
        page.setTotalPages(totalpages1);
        page.setBeginIndex(beginIndex);
        page.setEndIndex(endIndex);
        model.addAttribute("page",page);
		return "good/itemlist"; 
	} 
	
	@RequestMapping("/fenleilist")
	public String fenleilist(HttpServletRequest req,Model model,int specialty)throws Exception{ 
		List<Good> fenleigoods=goodService.getGoodsBySpecialty(specialty);
		session.setAttribute("fenleigoods", fenleigoods);
		session.setAttribute("sortfun", 0);
		return "redirect:/Good/list"; 
	} 
	
	@RequestMapping("/fenleilist2")
	public String fenleilist2(HttpServletRequest req,Model model,int grade)throws Exception{ 
		List<Good> fenleigoods=goodService.getGoodsByGrade(grade);
		session.setAttribute("fenleigoods", fenleigoods);
		session.setAttribute("sortfun", 0);
		return "redirect:/Good/list"; 
	} 
	@RequestMapping("/getAll")
	public String getAll(HttpServletRequest req,Model model)throws Exception{ 
		List<Good> allgoods=goodService.getAllGoods();
		
		session.setAttribute("fenleigoods", allgoods);
		session.setAttribute("sortfun",0);
		return "redirect:/Good/list"; 
	}
	
	@RequestMapping("/search")
	public String search(HttpServletRequest req,Model model,String st)throws Exception{ 
		List<Good> searchgoods=goodService.searchGoods(st);	
		System.out.println(searchgoods.size());
		session.setAttribute("sortfun", 0);
		session.setAttribute("fenleigoods", searchgoods);
		return "redirect:/Good/list"; 
	}
	@RequestMapping("/sortBySold")
	public String sortBySold(HttpServletRequest req,Model model)throws Exception{ 
		    List<Good> list=(List<Good>) session.getAttribute("fenleigoods");
		    int len=list.size();
		   for (int i = 0; i < len - 1; i++) {
		       for (int j = 0; j < len - 1 - i; j++) {
		    	    int sold= list.get(j).getSold();
		            int sold_1= list.get(j+1).getSold();
		            if (sold<sold_1)   {  
		                  //互换位置
		                 Good  goo= list.get(j);
		                 list.set(j, list.get(j+1));
		                 list.set(j+1, goo );
		            }  

		       }

		   }
		   session.setAttribute("fenleigoods", list);
		   session.setAttribute("sortfun", 1);
		return "redirect:/Good/list"; 
	}
	@RequestMapping("/sortByPrice")
	public String sortByPrice(HttpServletRequest req,Model model)throws Exception{ 
		    List<Good> list=(List<Good>) session.getAttribute("fenleigoods");
		    int len=list.size();
		   for (int i = 0; i < len - 1; i++) {
		       for (int j = 0; j < len - 1 - i; j++) {
		    	    double realprice= list.get(j).getPrice()*list.get(j).getDiscount();
		            double realprice_1= list.get(j+1).getPrice()*list.get(j+1).getDiscount();
		            if (realprice>realprice_1)   {  
		                  //互换位置
		                 Good  goo= list.get(j);
		                 list.set(j, list.get(j+1));
		                 list.set(j+1, goo );
		            }  

		       }

		   }
		   session.setAttribute("fenleigoods", list);
		   session.setAttribute("sortfun", 2);
		return "redirect:/Good/list"; 
	}
	@RequestMapping("/sortByDate")
	public String sortByDate(HttpServletRequest req,Model model)throws Exception{ 
		    List<Good> list=(List<Good>) session.getAttribute("fenleigoods");
		    int len=list.size();
		    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		   for (int i = 0; i < len - 1; i++) {
		       for (int j = 0; j < len - 1 - i; j++) {
		            if (dateFormat.parse(list.get(j).getPubdate()).getTime()<dateFormat.parse(list.get(j+1).getPubdate()).getTime())   {  
		                  //互换位置
		                 Good  goo= list.get(j);
		                 list.set(j, list.get(j+1));
		                 list.set(j+1, goo );
		            }  

		       }

		   }
		   session.setAttribute("fenleigoods", list);
		   session.setAttribute("sortfun", 3);
		return "redirect:/Good/list"; 
	}
	@RequestMapping("/sortDefault")
	public String sortdDefault(HttpServletRequest req,Model model)throws Exception{ 
		    List<Good> list=(List<Good>) session.getAttribute("fenleigoods");
		    int len=list.size();
		    for (int i = 0; i < len - 1; i++) {
			       for (int j = 0; j < len - 1 - i; j++) {
			    	    int id= list.get(j).getGoodsid();
			            int id_1= list.get(j+1).getGoodsid();
			            if (id>id_1)   {  
			                  //互换位置
			                 Good  goo= list.get(j);
			                 list.set(j, list.get(j+1));
			                 list.set(j+1, goo );
			            }  

			       }

			   }
		   session.setAttribute("fenleigoods", list);
		   session.setAttribute("sortfun", 0);
		return "redirect:/Good/list"; 
	}
	
}
