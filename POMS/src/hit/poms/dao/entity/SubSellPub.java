package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 AM
 * @author new
 *���ܣ���վ������ձ��ʵ����
 */


public class SubSellPub {
	private Long substation_id;//���վ�����
	private Long pub_id;//�뿯������
	private Long pub_send_num;//���࿯����������
	private String send_time;//����ʱ��
	private Double get_money;//���ս��
	
	
	@Override
	public String toString() {
		return "SubSellPub [get_money=" + get_money + ", pub_id=" + pub_id
				+ ", pub_send_num=" + pub_send_num + ", send_time=" + send_time
				+ ", substation_id=" + substation_id + "]";
	}
	
	
	public SubSellPub(Long substationId, Long pubId, Long pubSendNum,
			String sendTime, Double getMoney) {
		super();
		substation_id = substationId;
		pub_id = pubId;
		pub_send_num = pubSendNum;
		send_time = sendTime;
		get_money = getMoney;
	}
	
	
	public SubSellPub() {
		super();
	}
	
	
	public Long getSubstation_id() {
		return substation_id;
	}
	public void setSubstation_id(Long substationId) {
		substation_id = substationId;
	}
	public Long getPub_id() {
		return pub_id;
	}
	public void setPub_id(Long pubId) {
		pub_id = pubId;
	}
	public Long getPub_send_num() {
		return pub_send_num;
	}
	public void setPub_send_num(Long pubSendNum) {
		pub_send_num = pubSendNum;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String sendTime) {
		send_time = sendTime;
	}
	public Double getGet_money() {
		return get_money;
	}
	public void setGet_money(Double getMoney) {
		get_money = getMoney;
	}
	

}
