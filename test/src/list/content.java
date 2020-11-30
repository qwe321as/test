package list;

public class content {
	private int contentNo;
	private String title;
	private String retitle;
	private int grap;
	private int star;
	public content(int contentNo, String title, String retitle, int grap, int star) {
		super();
		this.contentNo = contentNo;
		this.title = title;
		this.retitle = retitle;
		this.grap = grap;
		this.star = star;
	}
	public int getContentNo() {
		return contentNo;
	}
	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRetitle() {
		return retitle;
	}
	public void setRetitle(String retitle) {
		this.retitle = retitle;
	}
	public int getGrap() {
		return grap;
	}
	public void setGrap(int grap) {
		this.grap = grap;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}


}
