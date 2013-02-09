package org.smith.sample.domain;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("serial")
public class Customer implements Serializable {
  @Override
public String toString() {
	return "Customer [id=" + id + ", name=" + name + ", address=" + address
			+ ", city=" + city + ", state=" + state + ", zipCode=" + zipCode
			+ ", phoneNumber=" + phoneNumber + ", type=" + type + ", sex="
			+ sex + ", getSex()=" + getSex() + ", getType()=" + getType()
			+ ", getCity()=" + getCity() + ", getId()=" + getId()
			+ ", getName()=" + getName() + ", getPhoneNumber()="
			+ getPhoneNumber() + ", getState()=" + getState()
			+ ", getAddress()=" + getAddress() + ", getZipCode()="
			+ getZipCode() + ", getClass()=" + getClass() + ", hashCode()="
			+ hashCode() + ", toString()=" + super.toString() + "]";
}

private Integer id;
  
  @NotEmpty(message = "Your name must not be blank.")
  private String name;
  
  @NotEmpty(message = "Your address must not be blank.")
  private String address;
  
  @NotEmpty(message = "Your city must not be blank.")
  private String city;
  
  @NotEmpty(message = "Your state must not be blank.")
  private String state;
  
  @NotEmpty(message = "Your Zip Code must not be blank.")
  private String zipCode;
  
  @NotEmpty(message = "Your Phone Number must not be blank.")
  private String phoneNumber;
  
  
  private String type;
  
  
  private String sex;
  
  public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

public Customer() {}
  
  public Customer(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getZipCode() {
    return zipCode;
  }

  public void setZipCode(String zipCode) {
    this.zipCode = zipCode;
  }
}
