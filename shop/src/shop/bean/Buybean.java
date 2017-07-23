package shop.bean;

public class Buybean {

	private int bno;
	private int mno;
	private int ono;
	private int psize;
	private String color;
	private int pno;
	private String pname;
	private int price;
	private String mainimg;
	private int cno;
	private String cname;
	private int ino;
	private int bamount;
	private String bregdate;
	private String delivery;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public int getPsize() {
		return psize;
	}

	public void setPsize(int psize) {
		this.psize = psize;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

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

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public int getBamount() {
		return bamount;
	}

	public void setBamount(int bamount) {
		this.bamount = bamount;
	}

	public String getBregdate() {
		return bregdate;
	}

	public void setBregdate(String bregdate) {
		this.bregdate = bregdate;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	@Override
	public String toString() {
		return "Buybean [bno=" + bno + ", mno=" + mno + ", ono=" + ono + ", psize=" + psize + ", color=" + color
				+ ", pno=" + pno + ", pname=" + pname + ", price=" + price + ", mainimg=" + mainimg + ", cno=" + cno
				+ ", cname=" + cname + ", ino=" + ino + ", bamount=" + bamount + ", bregdate=" + bregdate
				+ ", delivery=" + delivery + "]";
	}

}
