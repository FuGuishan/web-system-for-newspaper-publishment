package zhouyou.control.callcenter.entity;

public class EmpDeductMarks {
	public EmpDeductMarks() {
		super();
	}

	public EmpDeductMarks(String employeeNumber, Integer deductMarks) {
		super();
		employee_number = employeeNumber;
		deduct_marks = deductMarks;
	}

	private String employee_number;
	private Integer deduct_marks;

	public String getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(String employeeNumber) {
		employee_number = employeeNumber;
	}

	public Integer getDeduct_marks() {
		return deduct_marks;
	}

	public void setDeduct_marks(Integer deductMarks) {
		deduct_marks = deductMarks;
	}
}
