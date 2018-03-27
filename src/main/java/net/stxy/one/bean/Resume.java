package net.stxy.one.bean;

public class Resume {
	private String r_id;
	private String r_salary;
	private String r_profile;
	private String r_static;
	private int u_id;
	private int c_id;

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_salary() {
		return r_salary;
	}

	public void setR_salary(String r_salary) {
		this.r_salary = r_salary;
	}

	public String getR_profile() {
		return r_profile;
	}

	public void setR_profile(String r_profile) {
		this.r_profile = r_profile;
	}

	public String getR_static() {
		return r_static;
	}

	public void setR_static(String r_static) {
		this.r_static = r_static;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	@Override
	public String toString() {
		return "Resume [r_id=" + r_id + ", r_salary=" + r_salary + ", r_profile=" + r_profile + ", r_static=" + r_static
				+ ", u_id=" + u_id + ", c_id=" + c_id + "]";
	}

	public Resume() {
		super();
		// TODO Auto-generated constructor stub
	}

}
