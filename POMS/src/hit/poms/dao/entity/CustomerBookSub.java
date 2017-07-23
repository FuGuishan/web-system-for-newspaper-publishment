package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ��˿Ϳ�����ձ��ʵ����
 */
public class CustomerBookSub {
	private Long pub_id;//����������
	private Long customer_id;//�˿ͱ��
	private String start_time;//��ʼʱ��
	private String end_time;//����ʱ��
	private Double pub_money;//����������Ľ��
	private String customer_address;;//�˿͵�ַ
	private Long pub_need_num;//��������
	private char gift_type;//����Ʒ����(0:û�У�1:������2:����ȯ)
	private double discount;//���ݹ˿����ͺ͹˿Ͷ����Ŀ���������ʱ����ȷ���ۿۣ�����Ϊ��
	private Long gift_num;//����Ʒ���
	
	
	@Override
	public String toString() {
		return "CustomerBookSub [customer_address=" + customer_address
				+ ", customer_id=" + customer_id + ", discount=" + discount
				+ ", end_time=" + end_time + ", gift_num=" + gift_num
				+ ", gift_type=" + gift_type + ", pub_id=" + pub_id
				+ ", pub_money=" + pub_money + ", pub_need_num=" + pub_need_num
				+ ", start_time=" + start_time + "]";
	}
	
	
	public CustomerBookSub(Long pubId, Long customerId, String startTime,
			String endTime, Double pubMoney, String customerAddress,
			Long pubNeedNum, char giftType, double discount, Long giftNum) {
		super();
		pub_id = pubId;
		customer_id = customerId;
		start_time = startTime;
		end_time = endTime;
		pub_money = pubMoney;
		customer_address = customerAddress;
		pub_need_num = pubNeedNum;
		gift_type = giftType;
		this.discount = discount;
		gift_num = giftNum;
	}
	
	
	public CustomerBookSub() {
		super();
	}
	
	
	public Long getPub_id() {
		return pub_id;
	}
	public void setPub_id(Long pubId) {
		pub_id = pubId;
	}
	public Long getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Long customerId) {
		customer_id = customerId;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String startTime) {
		start_time = startTime;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String endTime) {
		end_time = endTime;
	}
	public Double getPub_money() {
		return pub_money;
	}
	public void setPub_money(Double pubMoney) {
		pub_money = pubMoney;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customerAddress) {
		customer_address = customerAddress;
	}
	public Long getPub_need_num() {
		return pub_need_num;
	}
	public void setPub_need_num(Long pubNeedNum) {
		pub_need_num = pubNeedNum;
	}
	public char getGift_type() {
		return gift_type;
	}
	public void setGift_type(char giftType) {
		gift_type = giftType;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Long getGift_num() {
		return gift_num;
	}
	public void setGift_num(Long giftNum) {
		gift_num = giftNum;
	}
	

	

}
