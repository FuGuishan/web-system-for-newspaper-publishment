package zhouyou.control.callcenter.entity;

public class AdviceType {

	public AdviceType() {
		super();
	}

	public AdviceType(String adviceType, String adviceTypeId) {
		super();
		advice_type = adviceType;
		advice_type_id = adviceTypeId;
	}

	private String advice_type;
	private String advice_type_id;

	public String getAdvice_type() {
		return advice_type;
	}

	public void setAdvice_type(String adviceType) {
		advice_type = adviceType;
	}

	public String getAdvice_type_id() {
		return advice_type_id;
	}

	public void setAdvice_type_id(String adviceTypeId) {
		advice_type_id = adviceTypeId;
	}

}
