package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Good;
import mapper.GoodMapper;

@Service
public class GoodService {
private GoodMapper goodMapper;
@Autowired
public GoodService(GoodMapper goodMapper) {
	this.goodMapper=goodMapper;
}

public Good getgoodbyid(int id) {
	Good good=goodMapper.getGoodById(id);
	return good;
}

@Transactional
public boolean changecollection(int collection,int goodsid) {
	boolean b=goodMapper.updategoodscollection(collection, goodsid);
	if(b)return true;
	else return false;
}

}
