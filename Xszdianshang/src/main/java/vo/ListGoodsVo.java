package vo;

import java.util.List;

import entity.Good;

public class ListGoodsVo {
	private List<Good> rows;
	private int total;
	private int currentPage;
	private int totalPages;
	private int beginIndex;
	public ListGoodsVo() {
		super();
	}
	public List<Good> getRows() {
		return rows;
	}
	public void setRows(List<Good> rows) {
		this.rows = rows;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getBeginIndex() {
		return beginIndex;
	}
	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}
	public int getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}
	private int endIndex;
}
