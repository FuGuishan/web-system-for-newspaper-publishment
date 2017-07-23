package zhouyou.control.callcenter.entity;

public class ComplainType {
	public ComplainType() {
		super();
	}

	public ComplainType(String complainType, String complainTypeId) {
		super();
		complain_type = complainType;
		complain_type_id = complainTypeId;
	}

	private String complain_type;
	private String complain_type_id;

	public String getComplain_type() {
		return complain_type;
	}

	public void setComplain_type(String complainType) {
		complain_type = complainType;
	}

	public String getComplain_type_id() {
		return complain_type_id;
	}

	public void setComplain_type_id(String complainTypeId) {
		complain_type_id = complainTypeId;
	}
}
