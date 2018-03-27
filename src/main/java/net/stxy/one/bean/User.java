package net.stxy.one.bean;

public class User {
	private String u_id;
	private String u_name;
	private String u_pwd;
	private String u_sex;
	private String u_role;// 用户类型
	private String u_school;// 毕业学校
	private String u_edu;// 学历
	private String u_exp;// 工作经验
	private String u_mail;
	private String u_direct;// 就业方向
	private String u_static;// 账号状态
	private String u_tel;// 电话

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_sex() {
		return u_sex;
	}

	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}

	public String getU_role() {
		return u_role;
	}

	public void setU_role(String u_role) {
		this.u_role = u_role;
	}

	public String getU_school() {
		return u_school;
	}

	public void setU_school(String u_school) {
		this.u_school = u_school;
	}

	public String getU_edu() {
		return u_edu;
	}

	public void setU_edu(String u_edu) {
		this.u_edu = u_edu;
	}

	public String getU_exp() {
		return u_exp;
	}

	public void setU_exp(String u_exp) {
		this.u_exp = u_exp;
	}

	public String getU_mail() {
		return u_mail;
	}

	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}

	public String getU_direct() {
		return u_direct;
	}

	public void setU_direct(String u_direct) {
		this.u_direct = u_direct;
	}

	public String getU_static() {
		return u_static;
	}

	public void setU_static(String u_static) {
		this.u_static = u_static;
	}

	public String getU_tel() {
		return u_tel;
	}

	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}

	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_pwd=" + u_pwd + ", u_sex=" + u_sex + ", u_role="
				+ u_role + ", u_school=" + u_school + ", u_edu=" + u_edu + ", u_exp=" + u_exp + ", u_mail=" + u_mail
				+ ", u_direct=" + u_direct + ", u_static=" + u_static + ", u_tel=" + u_tel + "]";
	}

}
