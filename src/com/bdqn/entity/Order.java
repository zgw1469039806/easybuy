package com.bdqn.entity;


public class Order {

  private Integer id;
  private Integer userId;
  private String loginName;
  private String userAddress;
  private java.sql.Timestamp createTime;
  private double cost;
  private String serialNumber;

  private String userName;
  private Integer price;
  private Integer odquantity;
  private Integer ocost;
  private String pname;

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public Integer getPrice() {
    return price;
  }

  public void setPrice(Integer price) {
    this.price = price;
  }

  public Integer getOdquantity() {
    return odquantity;
  }

  public void setOdquantity(Integer odquantity) {
    this.odquantity = odquantity;
  }

  public Integer getOcost() {
    return ocost;
  }

  public void setOcost(Integer ocost) {
    this.ocost = ocost;
  }

  public String getPname() {
    return pname;
  }

  public void setPname(String pname) {
    this.pname = pname;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public Integer getUserId() {
    return userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }


  public String getLoginName() {
    return loginName;
  }

  public void setLoginName(String loginName) {
    this.loginName = loginName;
  }


  public String getUserAddress() {
    return userAddress;
  }

  public void setUserAddress(String userAddress) {
    this.userAddress = userAddress;
  }


  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }


  public double getCost() {
    return cost;
  }

  public void setCost(double cost) {
    this.cost = cost;
  }


  public String getSerialNumber() {
    return serialNumber;
  }

  public void setSerialNumber(String serialNumber) {
    this.serialNumber = serialNumber;
  }

}
