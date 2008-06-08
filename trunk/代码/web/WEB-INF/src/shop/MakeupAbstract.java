package shop;

public abstract class MakeupAbstract extends Products {
  public String brand;
  public String isbn;
  public String mtype;
  public String mfunction;
  public String capacity;
  public String maker;
  public String outdate;
  public String shelflife;
  
  public void setBrand(String brand){
	  this.brand=brand;
  }
  public String getBrand(){
	  return brand;
  }
  public void setIsbn(String isbn){
	  this.isbn=isbn;
  }
  public String getIsbn(){
	  return isbn;
  }
  public void setMtype(String mtype){
	  this.mtype =mtype;
  }
  public String getMtype(){
	  return mtype;
  }
  public void setMfunction(String mfunction){
	  this.mfunction=mfunction;
  }
  public String getMfunction(){
	  return mfunction;
  }
  public void setCapacity(String capacity){
	  this.capacity =capacity;
  }
  public String getCapacity(){
	  return capacity;
  }
  public void setMaker(String maker){
	  this.maker=maker;
  }
  public String getMaker(){
	  return maker;
  }
  public void setOutdate(String outdate)
  {
	  this.outdate=outdate;
  }
  public String getOutdate(){
	  return outdate;
  }
  public void setShelflife(String shelflife){
	  this.shelflife =shelflife;
  }
  public String getShelflife(){
	  return shelflife;
  }
  
  
}
