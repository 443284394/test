package com.wpg.pojo;

public class Data {
	private int id;
	private String name;
	private String type;
	private String unit;
	private String num;
	private String brand;
	private int mark;
	private String states;
	private String desct;
	private double price;
	private String tablename;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}



	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	public String getStates() {
		return states;
	}

	public void setStates(String states) {
		this.states = states;
	}

	public String getDesct() {
		return desct;
	}

	public void setDesct(String desct) {
		this.desct = desct;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Data(int id, String name, String type, String unit, String num, String brand, int mark, String states,
			String desct, double price, String tablename) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.unit = unit;
		this.num = num;
		this.brand = brand;
		this.mark = mark;
		this.states = states;
		this.desct = desct;
		this.price = price;
		this.tablename = tablename;
	}

	public Data() {
		super();
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	
}
