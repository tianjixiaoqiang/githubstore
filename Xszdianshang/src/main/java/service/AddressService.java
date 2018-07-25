package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Address;
import mapper.AddressMapper;

@Service
public class AddressService {
private AddressMapper addressMapper;
@Autowired
public AddressService(AddressMapper addressMapper) {
	this.addressMapper=addressMapper;
}

@Transactional
public boolean addaddress(Address address) {
	int i=addressMapper.addAddress(address);
	if(i!=0)return true;
	else return false;
}
@Transactional
public boolean changeaddress(Address address) {
	boolean b=addressMapper.updateaddress(address);
	if(b) {
		return true;
	}
	else {
		return false;
	}
}
@Transactional
public boolean deleteaddress(int id) {
	int i=addressMapper.deleteaddress(id);
	if(i!=0)return true;
	else return false;
}

public List<Address> findaddressbyuserid(int userid) {
	return addressMapper.findaddressByuserid(userid);
}

@Transactional
public boolean updatedefaddress(int userid) {
	boolean b=addressMapper.updatedefaultaddress(userid);
	if(b)return true;
	else {
		 return false;
	}
}

public Address finddeadd(int userid) {
	return addressMapper.finddefaultaddress(userid);
}

public Address findaddressid(Address address) {
	return addressMapper.findaddressid(address);
}

public Address findaddrbyid(int id) {
	return addressMapper.findaddressbyid(id);
}

}
