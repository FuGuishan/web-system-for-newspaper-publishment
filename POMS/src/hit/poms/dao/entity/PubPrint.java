package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ�ӡˢ��Ϣ���ʵ����
 */
public class PubPrint {
	private Long print_id;//ӡˢ�����
	private Long pub_id;//������
	private Long print_num;//ӡˢ����
	private String print_time;//ӡˢʱ��
	private Double pay_money;//�ܲ���֧����Ǯ��
	//-----------------------------------------------------------------------
	@Override
	public String toString() {
		return "PubPrint [pay_money=" + pay_money + ", print_id=" + print_id
				+ ", print_num=" + print_num + ", print_time=" + print_time
				+ ", pub_id=" + pub_id + ", getPay_money()=" + getPay_money()
				+ ", getPrint_id()=" + getPrint_id() + ", getPrint_num()="
				+ getPrint_num() + ", getPrint_time()=" + getPrint_time()
				+ ", getPub_id()=" + getPub_id() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	//-----------------------------------------------------------------------
	public PubPrint(Long printId, Long pubId, Long printNum, String printTime,
			Double payMoney) {
		super();
		print_id = printId;
		pub_id = pubId;
		print_num = printNum;
		print_time = printTime;
		pay_money = payMoney;
	}
	//-----------------------------------------------------------------------
	public PubPrint() {
		super();
	}
	//-----------------------------------------------------------------------
	public Long getPrint_id() {
		return print_id;
	}
	public void setPrint_id(Long printId) {
		print_id = printId;
	}
	public Long getPub_id() {
		return pub_id;
	}
	public void setPub_id(Long pubId) {
		pub_id = pubId;
	}
	public Long getPrint_num() {
		return print_num;
	}
	public void setPrint_num(Long printNum) {
		print_num = printNum;
	}
	public String getPrint_time() {
		return print_time;
	}
	public void setPrint_time(String printTime) {
		print_time = printTime;
	}
	public Double getPay_money() {
		return pay_money;
	}
	public void setPay_money(Double payMoney) {
		pay_money = payMoney;
	}
	


}
