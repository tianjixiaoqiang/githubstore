package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Collect;
import mapper.CollectMapper;

@Service
public class CollectService {
private CollectMapper collectMapper;
@Autowired
public CollectService(CollectMapper collectMapper) {
	this.collectMapper=collectMapper;
}

@Transactional
public boolean addcollection(Collect collect) {
	int i=collectMapper.addintocollect(collect);
	if(i!=0)return true;
	else {
		 return false;
	}
}
public boolean isincollects(int userid,int goodsid) {
	List<Collect> collects=collectMapper.getcollect(userid, goodsid);
	if(collects!=null&&collects.size()!=0)return true;
	else return false;
}

public boolean quxiaosc(int userid,int goodsid) {
	int i=collectMapper.quxiaoshoucang(userid, goodsid);
	if(i!=0)return true;
	else return false;
}

}
