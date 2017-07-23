package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ����乫˾���ʵ����
 */
public class Transport {
	private Long transport_id;//���乫˾���
	private String transport_company_name;//���乫˾����
	private Long transport_person_tel;//���乫˾��������ϵ��ʽ
	private String avliable_time;//����ʱ��
	private String transport_address;//���乫˾��ַ
	private String transport_person;//���为����
	//-------------------------------------------------------------------------
	@Override
	public String toString() {
		return "Transport [avliable_time=" + avliable_time
				+ ", transport_address=" + transport_address
				+ ", transport_company_name=" + transport_company_name
				+ ", transport_id=" + transport_id + ", transport_person="
				+ transport_person + ", transport_person_tel="
				+ transport_person_tel + ", getAvliable_time()="
				+ getAvliable_time() + ", getTransport_address()="
				+ getTransport_address() + ", getTransport_company_name()="
				+ getTransport_company_name() + ", getTransport_id()="
				+ getTransport_id() + ", getTransport_person()="
				+ getTransport_person() + ", getTransport_person_tel()="
				+ getTransport_person_tel() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	//-------------------------------------------------------------------------
	public Transport(Long transportId, String transportCompanyName,
			Long transportPersonTel, String avliableTime,
			String transportAddress, String transportPerson) {
		super();
		transport_id = transportId;
		transport_company_name = transportCompanyName;
		transport_person_tel = transportPersonTel;
		avliable_time = avliableTime;
		transport_address = transportAddress;
		transport_person = transportPerson;
	}
	//-------------------------------------------------------------------------
	public Transport() {
		super();
	}
	//-------------------------------------------------------------------------
	public Long getTransport_id() {
		return transport_id;
	}
	public void setTransport_id(Long transportId) {
		transport_id = transportId;
	}
	public String getTransport_company_name() {
		return transport_company_name;
	}
	public void setTransport_company_name(String transportCompanyName) {
		transport_company_name = transportCompanyName;
	}
	public Long getTransport_person_tel() {
		return transport_person_tel;
	}
	public void setTransport_person_tel(Long transportPersonTel) {
		transport_person_tel = transportPersonTel;
	}
	public String getAvliable_time() {
		return avliable_time;
	}
	public void setAvliable_time(String avliableTime) {
		avliable_time = avliableTime;
	}
	public String getTransport_address() {
		return transport_address;
	}
	public void setTransport_address(String transportAddress) {
		transport_address = transportAddress;
	}
	public String getTransport_person() {
		return transport_person;
	}
	public void setTransport_person(String transportPerson) {
		transport_person = transportPerson;
	}
	


}
