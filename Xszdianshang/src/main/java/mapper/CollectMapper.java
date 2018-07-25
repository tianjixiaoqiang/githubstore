package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.Collect;



@Repository
public interface CollectMapper {
	@Insert("insert into collects(userid,goodsid) values(#{userid},#{goodsid})")
	public int addintocollect(Collect collect);
	@Select("select * from collects where userid=#{userid} and goodsid=#{goodsid}")
	public List<Collect> getcollect(@Param("userid")int userid,@Param("goodsid")int goodsid);
	@Delete("delete from collects where userid=#{userid} and goodsid=#{goodsid}") 
	public int quxiaoshoucang(@Param("userid")int userid,@Param("goodsid")int goodsid);
}
