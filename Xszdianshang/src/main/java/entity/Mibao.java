package entity;

import org.springframework.stereotype.Component;

@Component 
public class Mibao {
private int mibaoid;
private String value;
public int getMibaoid() {
	return mibaoid;
}
public void setMibaoid(int mibaoid) {
	this.mibaoid = mibaoid;
}
public String getValue() {
	return value;
}
public void setValue(String value) {
	this.value = value;
}
}
