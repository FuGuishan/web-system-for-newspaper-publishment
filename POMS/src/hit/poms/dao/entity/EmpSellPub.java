package hit.poms.dao.entity;

import java.util.Date;


/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ�Ա��������ձ��ʵ����
 */

public class EmpSellPub {
	private Long emp_id;//Ա��ID
	private Long pub_id;//����ID
	private Long emp_order;//������
	private Long emp_delivery;//Ͷ����
	private String fin_time;//ʱ�䣨��Ӧ�������ʱ�䣩
	private Long customer_id;//�ͻ�ID��������Ͷ�ݵĶ���
	private Double get_money;//�˴����յ��Ľ��
	
	@Override
	public String toString() {
		return "EmpSellPub [customer_id=" + customer_id + ", emp_delivery="
				+ emp_delivery + ", emp_id=" + emp_id + ", emp_order="
				+ emp_order + ", fin_time=" + fin_time + ", get_money="
				+ get_money + ", pub_id=" + pub_id + ", getCustomer_id()="
				+ getCustomer_id() + ", getEmp_delivery()=" + getEmp_delivery()
				+ ", getEmp_id()=" + getEmp_id() + ", getEmp_order()="
				+ getEmp_order() + ", getFin_time()=" + getFin_time()
				+ ", getGet_money()=" + getGet_money() + ", getPub_id()="
				+ getPub_id() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	public EmpSellPub(Long empId, Long pubId, Long empOrder, Long empDelivery,
			String finTime, Long customerId, Double getMoney) {
		super();
		emp_id = empId;
		pub_id = pubId;
		emp_order = empOrder;
		emp_delivery = empDelivery;
		fin_time = finTime;
		customer_id = customerId;
		get_money = getMoney;
	}
	
	
	public EmpSellPub() {
		super();
	}
	
	
	public Long getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Long empId) {
		emp_id = empId;
	}
	public Long getPub_id() {
		return pub_id;
	}
	public void setPub_id(Long pubId) {
		pub_id = pubId;
	}
	public Long getEmp_order() {
		return emp_order;
	}
	public void setEmp_order(Long empOrder) {
		emp_order = empOrder;
	}
	public Long getEmp_delivery() {
		return emp_delivery;
	}
	public void setEmp_delivery(Long empDelivery) {
		emp_delivery = empDelivery;
	}
	public String getFin_time() {
		return fin_time;
	}
	public void setFin_time(String finTime) {
		fin_time = finTime;
	}
	public Long getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Long customerId) {
		customer_id = customerId;
	}
	public Double getGet_money() {
		return get_money;
	}
	public void setGet_money(Double getMoney) {
		get_money = getMoney;
	}
	

}
