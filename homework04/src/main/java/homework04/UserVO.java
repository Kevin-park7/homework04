package homework04;

public class UserVO {
	///Field
	private String id;
	private String pwd;
	private String name;
	private String sex;
	private String work;
	private String phone;
	private String addr;
	private boolean active;
	
	public UserVO() {
		// TODO Auto-generated constructor stub
	}




	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}




	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}




	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}




	/**
	 * @param pwd the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}





	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}



	@Override
	public String toString() {
		return "UserVO [id= "+id+",pwd="+pwd+",name=" + name + ",sex="+sex+" ,work=" + work + ", phone= "+phone+",addr="+addr+" ,active=" + active + "]";
	}
	
	
}
