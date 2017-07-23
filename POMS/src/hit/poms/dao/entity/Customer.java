package hit.poms.dao.entity;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 AM
 * @author new
 *���ܣ��˿ͱ��ʵ����
 */

public class Customer {
	private Long customer_id;//�˿�id
	private String customer_name;//�˿�����
	private String customer_address;//�˿͵�ַ
	private char customer_grade;//�˿͵ȼ�
	
	
	@Override
	public String toString() {
		return "Customer [customer_address=" + customer_address
				+ ", customer_grade=" + customer_grade + ", customer_id="
				+ customer_id + ", customer_name=" + customer_name + "]";
	}


	public Customer(Long customerId, String customerName,
			String customerAddress, char customerGrade) {
		super();
		customer_id = customerId;
		customer_name = customerName;
		customer_address = customerAddress;
		customer_grade = customerGrade;
	}
	
	
	public Customer() {
		super();
	}
	
	public Long getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Long customerId) {
		customer_id = customerId;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customerName) {
		customer_name = customerName;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customerAddress) {
		customer_address = customerAddress;
	}
	public char getCustomer_grade() {
		return customer_grade;
	}
	public void setCustomer_grade(char customerGrade) {
		customer_grade = customerGrade;
	}
	

}
