package shopcart;

public class ProductionInfo {
    private int id;
    private String name;
    private float price;
    private float rate;
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public float getPrice() {
        return price;
    }

    
    public float getRate(){
    	return rate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(float price) {
        this.price = price;
    }

   
    
    public void setRate(float rate){
    	this.rate=rate;
    }

}
