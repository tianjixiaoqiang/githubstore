package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Good;

@Repository
public interface GoodMapper {
	@Select("select * from good where goodsid=#{goodsid}")
	public Good getGoodById(int goodsid);
	@Update("update good set collection=#{collection} where goodsid=#{goodsid}") 
	public boolean updategoodscollection(@Param("collection")int collection,@Param("goodsid")int goodsid);
	//////////
	@Select("select * from good order by str_to_date(pubdate,'%Y/%m/%d') DESC limit 0,7")
    List<Good> selectGoodsByTime();
    @Select("select * from good order by sold DESC limit 0,7")
    List<Good> selectGoodsBySold();
    @Select("select * from good order by discount asc limit 0,10")
    List<Good> selectGoodsByDiscount(); 
    @Select("select * from good g1 where (select count(*) from good g2 where g2.specialty = g1.specialty and g1.sold < g2.sold)<10 order by specialty desc,sold desc")
    List<Good> selectGoodsBySpecialty();
    @Select("select * from good where goodsid=#{id}")
	Good selectGoodById(int id);
    @Select("select * from good ")
    List<Good> getAllGoods();
    
    @Select("select * from good where specialty=#{specialty}")
	List<Good> getGoodBySpecialty(int specialty);

    @Select("select * from good where grade=#{grade}")
	List<Good> getGoodByGrade(int grade);
    
    
    
    //≤È—Ø
    @Select("select * from good where goodsname like CONCAT('%',#{st},'%')  or detail like CONCAT('%',#{st},'%') or introduction like CONCAT('%',#{st},'%') or isbn=#{st} ")
	List<Good> searchGoods(String st);
    @Select("select * from good order by sold DESC limit 0,8")
	List<Good> searchHotGoods();
}
