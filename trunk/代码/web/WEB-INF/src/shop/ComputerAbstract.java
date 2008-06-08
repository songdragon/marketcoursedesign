package shop;

public abstract class ComputerAbstract extends Products {
		
	public String cpu;
	public String hard;
	public String ramtype;
	public String ramsize;
	public String screen;
	public String brand;
	public String weight;
	public String speed;
	public String color;
	public String type;
	
	public void setCpu(String cpu){
		this.cpu =cpu;
	}
	public String getCpu(){
		return cpu;
	}
	public void setHard(String hard){
		this.hard=hard;
	}
	public String getHard(){
		return hard;
	}
	public void setRamtype(String ramtype){
		this.ramtype =ramtype;
	}
	public String getRamtype(){
		return ramtype;
	}
	public void setRamsize(String ramsize){
		this.ramsize=ramsize;
	}
	public String getRamsize(){
		return ramsize;
	}
	public void setScreen(String screen){
		this.screen=screen;
	}
	public String getScreen(){
		return screen;
	}
	public void setBrand(String brand){
		this.brand=brand;
	}
	public String getBrand(){
		return brand;
	}
	public void setWeight(String weight){
		this.weight =weight;
	}
	public String getWeight(){
		return weight;
	}
	public void setSpeed(String speed){
		this.speed =speed;
	}
	public String getSpeed(){
		return speed;
	}
	public void setColor(String color){
		this.color =color;
	}
	public String getColor(){
		return color;
	}
	public void setType(String type){
		this.type=type;
	}
	public String getType(){
		return type;
	}
	

}
