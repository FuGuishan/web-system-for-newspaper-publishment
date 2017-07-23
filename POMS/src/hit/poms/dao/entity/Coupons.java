package hit.poms.dao.entity;

import java.sql.Date;
/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ�����ȯ���ʵ����
 */
public class Coupons {
	private Double money;//���Դ����ֽ����
	private String start_time;//��ʼʱ��
	private String end_time;//��ֹʱ��
	private Long gift_num;//����Ʒ���
	
	@Override
	public String toString() {
		return "Coupons [end_time=" + end_time + ", gift_num=" + gift_num
				+ ", money=" + money + ", start_time=" + start_time
				+ ", getEnd_time()=" + getEnd_time() + ", getGift_num()="
				+ getGift_num() + ", getMoney()=" + getMoney()
				+ ", getStart_time()=" + getStart_time() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public Coupons(Double money, String startTime, String endTime, Long giftNum) {
		super();
		this.money = money;
		start_time = startTime;
		end_time = endTime;
		gift_num = giftNum;
	}
	public Coupons() {
		super();
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
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
	public Long getGift_num() {
		return gift_num;
	}
	public void setGift_num(Long giftNum) {
		gift_num = giftNum;
	}
	
	

}
