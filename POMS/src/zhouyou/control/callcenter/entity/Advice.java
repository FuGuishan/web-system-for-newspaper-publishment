package zhouyou.control.callcenter.entity;

public class Advice {
	public Advice(String adviceType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail) {
		super();
		advice_type = adviceType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
	}

	public Advice(String adviceType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String status) {
		super();
		advice_type = adviceType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		this.status = status;
	}

	public Advice(String adviceType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String adviceId, String status) {
		super();
		advice_type = adviceType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		advice_id = adviceId;
		this.status = status;
	}

	public Advice(String adviceType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String adviceId, String status, String feedback) {
		super();
		advice_type = adviceType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		advice_id = adviceId;
		this.status = status;
		this.feedback = feedback;
	}

	public Advice() {
		super();
	}

	private String advice_type;
	private String area;
	private String employee_number;
	private String customer_number;
	private String customer_tel;
	private String content_detail;
	private String advice_id;
	private String status;
	private String feedback;

	public String getAdvice_type() {
		return advice_type;
	}

	public void setAdvice_type(String adviceType) {
		advice_type = adviceType;
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

	public String getAdvice_id() {
		return advice_id;
	}

	public void setAdvice_id(String adviceId) {
		advice_id = adviceId;
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
