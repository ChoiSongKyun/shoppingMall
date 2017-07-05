package shop.bean;

public class ProductBean {
	
	private int pno;
	private String pname;
	private int price;
	private String mainimg;
	private int cno;
	private int ino;
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMainimg() {
		return mainimg;
	}
	public void setMainimg(String mainimg) {
		this.mainimg = mainimg;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	
	
	@Override
	public String toString() {
		return "ProductBean [pno=" + pno + ", pname=" + pname + ", price=" + price + ", mainimg=" + mainimg + ", cno="
				+ cno + ", ino=" + ino + "]";
	}
	
	

}
