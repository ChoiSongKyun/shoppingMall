package shop.bean;

public class OptionBean {
	private int ono;
	private String psize;
	private String color;
	private int pno;

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public String getPsize() {
		return psize;
	}

	public void setPsize(String psize) {
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

	@Override
	public String toString() {
		return "OptionBean [ono=" + ono + ", psize=" + psize + ", color=" + color + ", pno=" + pno + "]";
	}

}
