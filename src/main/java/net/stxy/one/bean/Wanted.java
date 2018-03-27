package net.stxy.one.bean;

public class Wanted {

	 private int c_id;
     private String c_name;
     private int w_id;
     private String w_job;
     private String w_salary;
     private String w_num;
     private String w_require;
     private String w_addr;
     private String w_direct;
     
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
	public int getW_id() {
		return w_id;
	}
	public void setW_id(int w_id) {
		this.w_id = w_id;
	}
	public String getW_job() {
		return w_job;
	}
	public void setW_job(String w_job) {
		this.w_job = w_job;
	}
	public String getW_salary() {
		return w_salary;
	}
	public void setW_salary(String w_salary) {
		this.w_salary = w_salary;
	}
	public String getW_num() {
		return w_num;
	}
	public void setW_num(String w_num) {
		this.w_num = w_num;
	}
	public String getW_require() {
		return w_require;
	}
	public void setW_require(String w_require) {
		this.w_require = w_require;
	}
	public String getW_addr() {
		return w_addr;
	}
	public void setW_addr(String w_addr) {
		this.w_addr = w_addr;
	}
	public String getW_direct() {
		return w_direct;
	}
	public void setW_direct(String w_direct) {
		this.w_direct = w_direct;
	}
	@Override
	public String toString() {
		return "Wanted [c_id=" + c_id + ", c_name=" + c_name + ", w_id=" + w_id + ", w_job=" + w_job + ", w_salary="
				+ w_salary + ", w_num=" + w_num + ", w_require=" + w_require + ", w_addr=" + w_addr + ", w_direct="
				+ w_direct + "]";
	}
     
     
}
