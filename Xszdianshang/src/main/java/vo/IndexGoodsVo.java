package vo;

import java.util.List;

import entity.Good;

public class IndexGoodsVo {
	private List<Good> newGoods; //新书
	
	private List<Good> hotRecommend;//热门
	
	private List<Good> hotSold;//热销
	
	private List<Good> dailySpecial;//特价

	public List<Good> getNewGoods() {
		return newGoods;
	}

	public void setNewGoods(List<Good> newGoods) {
		this.newGoods = newGoods;
	}

	public List<Good> getHotRecommend() {
		return hotRecommend;
	}

	public void setHotRecommend(List<Good> hotRecommend) {
		this.hotRecommend = hotRecommend;
	}

	public List<Good> getHotSold() {
		return hotSold;
	}

	public void setHotSold(List<Good> hotSold) {
		this.hotSold = hotSold;
	}

	public List<Good> getDailySpecial() {
		return dailySpecial;
	}

	public void setDailySpecial(List<Good> dailySpecial) {
		this.dailySpecial = dailySpecial;
	}

	public IndexGoodsVo() {
		super();
	}
	
	

}
