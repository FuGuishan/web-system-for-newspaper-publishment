package zhouyou.control.callcenter.entity;

public class PraiseType {
	public PraiseType() {
		super();
	}

	public PraiseType(String praiseType, String praiseTypeId) {
		super();
		praise_type = praiseType;
		praise_type_id = praiseTypeId;
	}

	private String praise_type;
	private String praise_type_id;

	public String getPraise_type() {
		return praise_type;
	}

	public void setPraise_type(String praiseType) {
		praise_type = praiseType;
	}

	public String getPraise_type_id() {
		return praise_type_id;
	}

	public void setPraise_type_id(String praiseTypeId) {
		praise_type_id = praiseTypeId;
	}
}
