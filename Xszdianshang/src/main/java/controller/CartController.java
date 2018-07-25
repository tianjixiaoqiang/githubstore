package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Cart;
import entity.Collect;
import entity.Good;
import entity.User;
import service.AddressService;
import service.CartService;
import service.CollectService;
import service.GoodService;
import service.UserService;

@Controller
@RequestMapping("/Cart")
public class CartController {
	@Autowired
	private UserService userService;
	@Autowired
	private GoodService goodService;
	@Autowired
	private CartService cartService;
    @Autowired
    private AddressService addressService;
    @Autowired
    private CollectService collectService;
	@Autowired
    private HttpSession session;
	@RequestMapping("/Xq")
	public String xq() {
		return "bookgouwuche/xq";
	}
	@RequestMapping("/Buy")
	public String buy() {
		return "bookgouwuche/buy";
	}
	
	@RequestMapping(value="/AddCart", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //��ע�ⲻ��ʡ�� ����ajax�޷����ܷ���ֵ 
	public String addcart(int userid,int goodsid,int num) {
		System.out.println(userid);
		System.out.println(goodsid);
		System.out.println(num);
		Good good=goodService.getgoodbyid(goodsid);
		//Good good=(Good) session.getAttribute("good");
		/*System.out.println(good.getImgurl());
		System.out.println(good.getGoodsname());
		System.out.println(good.getPrice());*/
		if(num>good.getNum()) {return "��治����";}
		Cart cart=new Cart();
		cart.setUserid(userid);
		cart.setGoodsid(goodsid);
		cart.setGoodsname(good.getGoodsname()+good.getIntroduction());
		cart.setImageurl(good.getImgurl());
		cart.setUnitprice(good.getPrice()*good.getDiscount());
		cart.setBuynum(num);
		boolean b=cartService.addintocart(cart);
		if(b) {
			List<Cart> carts=cartService.getallcartbyuid(userid);
			if(carts!=null&&carts.size()!=0) {
				session.setAttribute("mycart", carts);
				session.setAttribute("nocart", "");
			}
			else {
				session.setAttribute("nocart", "���ﳵ�տ���Ҳ");
			}
			return "��ӳɹ�";
			}//jsonObject.put("msg","��ӳɹ�");���ǰ���õ���json����
		else {return "���ʧ��";}	
	}
	
	@RequestMapping(value="/showcart")
	public String showcart() {
		User user=(User)session.getAttribute("user");
		int userid=user.getUserid();
		List<Cart> carts=cartService.getallcartbyuid(userid);
		if(carts!=null&&carts.size()!=0) {
			session.setAttribute("mycart", carts);
			session.setAttribute("nocart", "");
		}
		else {
			session.setAttribute("nocart", "���ﳵ�տ���Ҳ");
		}
		return "redirect:/Cart/Buy";
	}
	
	@RequestMapping(value="/changenum", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //��ע�ⲻ��ʡ�� ����ajax�޷����ܷ���ֵ 
	public String xiugainum(int userid,int goodsid,int num) {
		Good good=goodService.getgoodbyid(goodsid);
		int num2=good.getNum();
		if(num>num2) {return "��治����";}
		boolean b=cartService.updatenumincart(num, userid, goodsid);
		List<Cart> carts=cartService.getallcartbyuid(userid);
		session.setAttribute("mycart", carts);
		if(b) {
			return "�޸ĳɹ�";
		}
		else return "����δ֪����";
	}
	

	@RequestMapping(value="/deletegoods", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //��ע�ⲻ��ʡ�� ����ajax�޷����ܷ���ֵ 
	public String piliangshanchu(String cartitemstr) {//int cartids[]
		System.out.println(cartitemstr+"66666");
		String[] cartidstrs=cartitemstr.split(",");
		System.out.println(cartidstrs[0]+"777777");
		int length=cartidstrs.length;
		int[] cartids = new int[length];
		for(int i=0;i<cartidstrs.length;i++) {
			cartids[i]=Integer.valueOf(cartidstrs[i]);
		}
		System.out.println(cartids[0]+"888888");
		if(cartids.length!=0) {
			for(int i=0;i<cartids.length;i++) {
				int cartid=cartids[i];
				//System.out.println(cartid);
				boolean b=cartService.deletegoodsincart(cartid);
				if(!b) {
					break;
				}				
			}
			int cartid1=cartids[0];
			String cartid2=cartid1+"";
			if(cartid2!=null) {
				int userid=cartService.getuserid(cartid1);
				List<Cart> carts=new ArrayList<Cart>();
				carts=cartService.getallcartbyuid(userid);
				if(carts!=null&&carts.size()!=0) {
					session.setAttribute("mycart", carts);
					session.setAttribute("nocart", "");
				}
				else {
					session.setAttribute("mycart", carts);
					session.setAttribute("nocart", "���ﳵ�տ���Ҳ");
				}
			}
			return "ɾ���ɹ�";
		}
		else {
			return "���ﳵ����������Ʒѽ";
		}
	}
	
	@RequestMapping(value="/clearmycart", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //��ע�ⲻ��ʡ�� ����ajax�޷����ܷ���ֵ 
	public String qingkongcart(int userid) {
		boolean b=cartService.deletemyallcart(userid);
		if(b) {
			session.setAttribute("mycart", "");
			return "ɾ��������Ʒ�ɹ�";
		}
		else {
			return "δ֪����ɾ��ʧ��";
		}
	}
	
	@RequestMapping(value="/collect", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //��ע�ⲻ��ʡ�� ����ajax�޷����ܷ���ֵ 
	public String shoucang(int userid,int goodsid) {
		Good good=goodService.getgoodbyid(goodsid);
		int collection=good.getCollection();
		if(collectService.isincollects(userid, goodsid)) {
			collection--;
			goodService.changecollection(collection, goodsid);
			collectService.quxiaosc(userid, goodsid);
			return "ȡ���ղسɹ�";
		}
		else {
			
			collection++;
			goodService.changecollection(collection, goodsid);
			Collect collect=new Collect();
			collect.setUserid(userid);
			collect.setGoodsid(goodsid);
			collectService.addcollection(collect);
			return "�ղسɹ�";
		}
		
	}
	
}
