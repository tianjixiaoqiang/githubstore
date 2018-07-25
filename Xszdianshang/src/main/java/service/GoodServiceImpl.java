package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Good;
import mapper.GoodMapper;
import vo.IndexGoodsVo;

@Service
public class GoodServiceImpl implements IGoodService {
	@Autowired
	private GoodMapper goodMapper;

	@Override
	public IndexGoodsVo selectIndexGoods() {
		List<Good> dailySpecial=goodMapper.selectGoodsByDiscount();
		//System.out.println(dailySpecial.size());
		List<Good> hotsold=goodMapper.selectGoodsBySold();
		//System.out.println(hotsold.size());
		List<Good> hotRecommend=goodMapper.selectGoodsBySpecialty();
        //System.out.println(hotRecommend.size());
		List<Good> newgoods=goodMapper.selectGoodsByTime();
		//System.out.println(newgoods.size());
		IndexGoodsVo goods=new IndexGoodsVo();
		goods.setDailySpecial(dailySpecial);
		goods.setHotRecommend(hotRecommend);
		goods.setHotSold(hotsold);
		goods.setNewGoods(newgoods);
		return goods;
	}

	@Override
	public Good selectXqGood(int id) {
		Good good=goodMapper.selectGoodById(id);
		return good;
	}

	@Override
	public List<Good> getAllGoods() {
		List<Good> goods =goodMapper.getAllGoods();
		return goods;
	}

	@Override
	public List<Good> getGoodsBySpecialty(int specialty) {
		List<Good> goods =goodMapper.getGoodBySpecialty(specialty);
		return goods;
	}

	@Override
	public List<Good> getGoodsByGrade(int grade) {
		List<Good> goods =goodMapper.getGoodByGrade(grade);
		return goods;
	}

	@Override
	public List<Good> searchGoods(String st) {
		System.out.println(st);
		List<Good> goods =goodMapper.searchGoods(st);
		return goods;
	}

	@Override
	public List<Good> selectHotgoods() {
		List<Good> goods =goodMapper.searchHotGoods();
		return goods;
	}

}
