package mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.Mibao;

@Repository
public interface MibaoMapper {
	@Select("select * from mibao where mibaoid=#{id}")
	public Mibao findmibao(int id);
}
