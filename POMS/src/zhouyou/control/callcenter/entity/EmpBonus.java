package zhouyou.control.callcenter.entity;

public class EmpBonus {
	public EmpBonus() {
		super();
	}

	public EmpBonus(String employeeNumber, Integer bonus) {
		super();
		employee_number = employeeNumber;
		this.bonus = bonus;
	}

	private String employee_number;
	private Integer bonus;

	public String getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(String employeeNumber) {
		employee_number = employeeNumber;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}
}
