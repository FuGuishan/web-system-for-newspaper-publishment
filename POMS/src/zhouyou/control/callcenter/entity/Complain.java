package zhouyou.control.callcenter.entity;

/**
 * 投诉实体
 * 
 * @author zy
 * 
 */
public class Complain {

	public Complain(String complainType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String complainId, String status, String feedback) {
		super();
		complain_type = complainType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		complain_id = complainId;
		this.status = status;
		this.feedback = feedback;
	}

	public Complain() {
		super();
	}

	public Complain(String complainType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail,
			String complainId, String status) {
		super();
		complain_type = complainType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
		complain_id = complainId;
		this.status = status;
	}

	public Complain(String complainType, String area, String employeeNumber,
			String customerNumber, String customerTel, String contentDetail) {
		super();
		complain_type = complainType;
		this.area = area;
		employee_number = employeeNumber;
		customer_number = customerNumber;
		customer_tel = customerTel;
		content_detail = contentDetail;
	}

	private String complain_type;
	private String area;
	private String employee_number;
	private String customer_number;
	private String customer_tel;
	private String content_detail;
	private String complain_id;
	private String status;
	private String feedback;

	public String getComplain_type() {
		return complain_type;
	}

	public void setComplain_type(String complainType) {
		complain_type = complainType;
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

	public String getComplain_id() {
		return complain_id;
	}

	public void setComplain_id(String complainId) {
		complain_id = complainId;
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
