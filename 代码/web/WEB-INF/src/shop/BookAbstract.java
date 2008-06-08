package shop;

public abstract class BookAbstract extends Products{

	
	public String isbn;
	public String publisher;
	public String author;
	public String booksize;
	
	
	public void setIsbn(String isbn){
		this.isbn=isbn;
	}
	public String getIsbn(){
		return isbn;
	}
	public void setPublisher(String publisher){
		this.publisher=publisher;
	}
	public String getPublisher(){
		return  publisher;
	}
	public void setAuthor(String author){
		this.author=author;
	}
    public String  getAuthor(){
    	return author;
    }
    public void setBooksize(String booksize){
    	this.booksize =booksize;
    }
    public String getBooksize(){
    	return booksize;
    }
}
