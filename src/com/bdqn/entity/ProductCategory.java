package com.bdqn.entity;


public class ProductCategory {

  private Integer id;

  public String getCname() {
    return cname;
  }

  public void setCname(String cname) {
    this.cname = cname;
  }

  private String cname;
  private Integer parentId;
  private Integer type;
  private String iconClass;


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }




  public Integer getParentId() {
    return parentId;
  }

  public void setParentId(Integer parentId) {
    this.parentId = parentId;
  }


  public Integer getType() {
    return type;
  }

  public void setType(Integer type) {
    this.type = type;
  }


  public String getIconClass() {
    return iconClass;
  }

  public void setIconClass(String iconClass) {
    this.iconClass = iconClass;
  }

}
