package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Mibao;
import mapper.MibaoMapper;

@Service
public class MibaoService {
private MibaoMapper mibaoMapper;
@Autowired
public MibaoService(MibaoMapper mibaoMapper) {
	this.mibaoMapper=mibaoMapper;
}
@Transactional
public Mibao FindMibao(int mibaoid ) {
	Mibao m= mibaoMapper.findmibao(mibaoid);
	if(m!=null)
	return m;
	else
		return null;
}
}

