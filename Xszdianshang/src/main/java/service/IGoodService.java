package service;

import java.util.List;

import entity.Good;
import vo.IndexGoodsVo;
import vo.ListGoodsVo;

public interface IGoodService {
	public IndexGoodsVo selectIndexGoods()throws Exception;

	public Good selectXqGood(int id);

	public List<Good> getAllGoods();

	public List<Good> getGoodsBySpecialty(int specialty);

	public List<Good> getGoodsByGrade(int grade);


	public List<Good> searchGoods(String st);

	public List<Good> selectHotgoods();

}
