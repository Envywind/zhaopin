package net.stxy.one.bean;

public class Company {

	private int c_id;
	private String c_name;
	private String c_pwd;
	private String c_regcode;
	private String c_license;
	private String c_L_IDpic;
	private String c_L_ID;
	private String c_regname;
	private String c_regID;
	private String c_static;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_pwd() {
		return c_pwd;
	}
	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}
	public String getC_regcode() {
		return c_regcode;
	}
	public void setC_regcode(String c_regcode) {
		this.c_regcode = c_regcode;
	}
	public String getC_license() {
		return c_license;
	}
	public void setC_license(String c_license) {
		this.c_license = c_license;
	}
	public String getC_L_IDpic() {
		return c_L_IDpic;
	}
	public void setC_L_IDpic(String c_L_IDpic) {
		this.c_L_IDpic = c_L_IDpic;
	}
	public String getC_L_ID() {
		return c_L_ID;
	}
	public void setC_L_ID(String c_L_ID) {
		this.c_L_ID = c_L_ID;
	}
	public String getC_regname() {
		return c_regname;
	}
	public void setC_regname(String c_regname) {
		this.c_regname = c_regname;
	}
	public String getC_regID() {
		return c_regID;
	}
	public void setC_regID(String c_regID) {
		this.c_regID = c_regID;
	}
	public String getC_static() {
		return c_static;
	}
	public void setC_static(String c_static) {
		this.c_static = c_static;
	}
	@Override
	public String toString() {
		return "Company [c_id=" + c_id + ", c_name=" + c_name + ", c_pwd=" + c_pwd + ", c_regcode=" + c_regcode
				+ ", c_license=" + c_license + ", c_L_IDpic=" + c_L_IDpic + ", c_L_ID=" + c_L_ID + ", c_regname="
				+ c_regname + ", c_regID=" + c_regID + ", c_static=" + c_static + "]";
	}


}
