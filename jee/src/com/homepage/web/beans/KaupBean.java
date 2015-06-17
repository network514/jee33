package com.homepage.web.beans;

public class KaupBean {
	private double height;
	private double weight;
	private int idx;
	
	public KaupBean() {
		this(0,0);
	}
	
	public KaupBean(double i, double j) {
		this.height = i;
		this.weight = j;
		this.idx = (int)((weight / (height * height)) * 10000);
	}
	
	public String getMsg(){
		String msg = "";
		
		if(idx > 30)
			msg = "비만";
		else if (idx > 24)
			msg = "과체중";
		else if (idx > 20)
			msg = "정상";
		else if (idx > 15)
			msg = "저체중";
		else if (idx > 13)
			msg = "마름";
		else if (idx > 10)
			msg = "영양실조";
		else
			msg = "소모증";
		return msg;
	}

	@Override
	public String toString(){
		return "[키=" + getHeight() + "cm, 몸무게=" + getWeight() + "kg, 카우프지수=" + getIdx() + ", scanner=" + getMsg() + "]";
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}
	
}