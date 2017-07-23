package hit.poms.dao.entity;

import java.util.Date;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 PM
 * @author new
 *���ܣ�������ʵ����
 */

public class Publication {
	private Long pub_id;//����ID(����Ψһ��ʶ)
	private String pub_name;//����
	private Long print_num;//ӡ����
	private Long sell_num;//������
	private Long rest_num;//ʣ����
	private String image;//ͼƬhref
	private Double pub_price;//����۸�(�ռ�)
	private String pbu_type;//��������
	private char debook;//�Ƿ������˶�(0:����1��������)
	private char redirect;//�Ƿ�����תַ(0:����1��������)
	private Double pub_month_price;//�¼ۣ���һ�����Ż�
	private Double pub_year_price;//��ۣ��и�����Ż�
	private Double pub_release_rate;//���з��ʣ����ɱ����൱�ڸ�����ĸ��
	private String pub_time;//���ڣ����磺2014-05-12
	private String delivery_unit;//������λ
	
	//======================================================================
	@Override
	public String toString() {
		return "Publication [debook=" + debook + ", delivery_unit="
				+ delivery_unit + ", image=" + image + ", pbu_type=" + pbu_type
				+ ", print_num=" + print_num + ", pub_id=" + pub_id
				+ ", pub_month_price=" + pub_month_price + ", pub_name="
				+ pub_name + ", pub_price=" + pub_price + ", pub_release_rate="
				+ pub_release_rate + ", pub_time=" + pub_time
				+ ", pub_year_price=" + pub_year_price + ", redirect="
				+ redirect + ", rest_num=" + rest_num + ", sell_num="
				+ sell_num + "]";
	}
	
	//------------------------------------------------------------------------
	public Publication(Long pubId, String pubName, Long printNum, Long sellNum,
			Long restNum, String image, Double pubPrice, String pbuType,
			char debook, char redirect, Double pubMonthPrice, Double pubYearPrice,
			Double pubReleaseRate, String pubTime, String deliveryUnit) {
		super();
		pub_id = pubId;
		pub_name = pubName;
		print_num = printNum;
		sell_num = sellNum;
		rest_num = restNum;
		this.image = image;
		pub_price = pubPrice;
		pbu_type = pbuType;
		this.debook = debook;
		this.redirect = redirect;
		pub_month_price = pubMonthPrice;
		pub_year_price = pubYearPrice;
		pub_release_rate = pubReleaseRate;
		pub_time = pubTime;
		delivery_unit = deliveryUnit;
	}
	
	//-------------------------------------------------------
	public Publication() {
		super();
	}
	
	//-----------------------------------------------------------
	public Long getPub_id() {
		return pub_id;
	}
	public void setPub_id(Long pubId) {
		pub_id = pubId;
	}
	public String getPub_name() {
		return pub_name;
	}
	public void setPub_name(String pubName) {
		pub_name = pubName;
	}
	public Long getPrint_num() {
		return print_num;
	}
	public void setPrint_num(Long printNum) {
		print_num = printNum;
	}
	public Long getSell_num() {
		return sell_num;
	}
	public void setSell_num(Long sellNum) {
		sell_num = sellNum;
	}
	public Long getRest_num() {
		return rest_num;
	}
	public void setRest_num(Long restNum) {
		rest_num = restNum;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Double getPub_price() {
		return pub_price;
	}
	public void setPub_price(Double pubPrice) {
		pub_price = pubPrice;
	}
	public String getPbu_type() {
		return pbu_type;
	}
	public void setPbu_type(String pbuType) {
		pbu_type = pbuType;
	}
	public char getDebook() {
		return debook;
	}
	public void setDebook(char debook) {
		this.debook = debook;
	}
	public char getRedirect() {
		return redirect;
	}
	public void setRedirect(char redirect) {
		this.redirect = redirect;
	}
	public Double getPub_month_price() {
		return pub_month_price;
	}
	public void setPub_month_price(Double pubMonthPrice) {
		pub_month_price = pubMonthPrice;
	}
	public Double getPub_year_price() {
		return pub_year_price;
	}
	public void setPub_year_price(Double pubYearPrice) {
		pub_year_price = pubYearPrice;
	}
	public Double getPub_release_rate() {
		return pub_release_rate;
	}
	public void setPub_release_rate(Double pubReleaseRate) {
		pub_release_rate = pubReleaseRate;
	}
	public String getPub_time() {
		return pub_time;
	}
	public void setPub_time(String pubTime) {
		pub_time = pubTime;
	}
	public String getDelivery_unit() {
		return delivery_unit;
	}
	public void setDelivery_unit(String deliveryUnit) {
		delivery_unit = deliveryUnit;
	}

}
