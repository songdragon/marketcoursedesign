package shop;

public abstract class DressAbstract extends Products {
	public String brand;
	public String dsize;
	public String style;
	public String isbn;
	public String color;
	public String sex;
	public String material;
	public String season;
	
	public void setBrand(String brand){
		this.brand =brand;
	}
	public String getBrand(){
		return brand;
	}
	public void setDisze(String dsize){
		this.dsize =dsize;
	}
	public String getDsize(){
		return dsize;
	}
	public void setStyle(String style){
		this.style =style;
	}
	public String getStyle(){
		return style;
	}
	public void setIsbn(String isbn){
		this.isbn=isbn;
	}
	public String getIsbn(){
		return isbn;
	}
	public void setColor(String color){
		this.color =color;
	}
	public String getColor(){
		return color;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getSex(){
		return sex;
	}
	public void setMaterial(String material){
		this.material=material;
	}
	public String getMaterial(){
		return material;
	}
	public void setSeason(String season){
		this.season=season;
	}
	public String getSeason(){
		return season;
	}
	

}
