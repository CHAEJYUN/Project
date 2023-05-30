package com.multi.travel;

public class SpotVO {

	private int no;
	private String place;
	private String address;
	private String content;
	private String img;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	@Override
	public String toString() {
		return "SpotVO [no=" + no + ", place=" + place + ", address=" + address + ", content=" + content + ", img="
				+ img + "]";
	}
	
}
