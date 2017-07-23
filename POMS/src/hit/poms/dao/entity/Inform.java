package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ�֪ͨ���ʵ����
 */

public class Inform {
	private Long send_emp_id;//����Ա��id
	private Long get_emp_id;//����Ա��id
	private char if_read;//�Ƿ��Ѷ�0:δ����1���Ѷ�
	private String content;//����
	private String send_time;//����ʱ��
	private Long inform_id;//������:�����У���Ϊinform_quen����1��ʼ������Ϊ1
	//----------------------------------------------------------
	@Override
	public String toString() {
		return "Inform [content=" + content + ", get_emp_id=" + get_emp_id
				+ ", if_read=" + if_read + ", inform_id=" + inform_id
				+ ", send_emp_id=" + send_emp_id + ", send_time=" + send_time
				+ "]";
	}
	//----------------------------------------------------------
	public Inform(Long sendEmpId, Long getEmpId, char ifRead, String content,
			String sendTime, Long informId) {
		super();
		send_emp_id = sendEmpId;
		get_emp_id = getEmpId;
		if_read = ifRead;
		this.content = content;
		send_time = sendTime;
		inform_id = informId;
	}
	
	//----------------------------------------------------------
	public Inform() {
		super();
	}
	//-------------------------------------------------------------
	public Long getSend_emp_id() {
		return send_emp_id;
	}
	public void setSend_emp_id(Long sendEmpId) {
		send_emp_id = sendEmpId;
	}
	public Long getGet_emp_id() {
		return get_emp_id;
	}
	public void setGet_emp_id(Long getEmpId) {
		get_emp_id = getEmpId;
	}
	public char getIf_read() {
		return if_read;
	}
	public void setIf_read(char ifRead) {
		if_read = ifRead;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String sendTime) {
		send_time = sendTime;
	}
	public Long getInform_id() {
		return inform_id;
	}
	public void setInform_id(Long informId) {
		inform_id = informId;
	}


}
