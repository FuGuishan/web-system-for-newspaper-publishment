package zhouyou.control.callcenter.entity;

public class Praise {
	public Praise(String praiseType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail) {
		super();
		praise_type = praiseType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
	}

	public Praise() {
		super();
	}

	public Praise(String praiseType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String praiseId, String status, String feedback) {
		super();
		praise_type = praiseType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		praise_id = praiseId;
		this.status = status;
		this.feedback = feedback;
	}

	private String praise_type;
	private String area;
	private String employee_number;
	private String customer_number;
	private String customer_tel;
	private String content_detail;
	private String praise_id;
	private String status;
	private String feedback;

	public String getPraise_type() {
		return praise_type;
	}

	public void setPraise_type(String praiseType) {
		praise_type = praiseType;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(String employeeNumber) {
		employee_number = employeeNumber;
	}

	public String getCustomer_number() {
		return customer_number;
	}

	public void setCustomer_number(String customerNumber) {
		customer_number = customerNumber;
	}

	public String getCustomer_tel() {
		return customer_tel;
	}

	public void setCustomer_tel(String customerTel) {
		customer_tel = customerTel;
	}

	public String getContent_detail() {
		return content_detail;
	}

	public void setContent_detail(String contentDetail) {
		content_detail = contentDetail;
	}

	public String getPraise_id() {
		return praise_id;
	}

	public void setPraise_id(String praiseId) {
		praise_id = praiseId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
}
