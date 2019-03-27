package practice;

public class productdetails {

	private int id;
	private double price;
	private String name,discription,category,brand;
	
	public productdetails(int id, String name,String brand,String category,  double price,String discription ) {
		super();
		this.id = id;
		this.price = price;
		this.name = name;
		this.brand=brand;
		this.discription = discription;
		this.category = category;
	}
	

	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public productdetails() {
		super();
	}
	
}
