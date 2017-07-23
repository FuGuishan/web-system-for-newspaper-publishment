package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import zhouyou.control.callcenter.entity.EmpDeductMarks;
import zhouyou.control.callcenter.util.DBManager;

public class EmpDeductMarksDAO {
   public boolean exist(EmpDeductMarks empdm)
   {
	    Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean flag = false;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "select * from emp_deduct_marks where employee_number = ?";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, empdm.getEmployee_number());
		
		    rs = ps.executeQuery();
		    flag = rs.next();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	   return flag; 
   }
   
   public void update(EmpDeductMarks empdm)
   {
	    Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象
		try {
			String sql = "select * from emp_deduct_marks where employee_number = ? ";
			ps = conn.prepareStatement(sql);
            ps.setString(1, empdm.getEmployee_number());
            rs = ps.executeQuery();
		    rs.next();
		    Integer marks = rs.getInt("deduct_marks");
		    marks = marks + 2;
		    
		    
		    sql = "update emp_deduct_marks set deduct_marks = ? where employee_number = ?";
		    ps = conn.prepareStatement(sql);
		    ps.setInt(1, marks);
		    ps.setString(2, empdm.getEmployee_number());
		    
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
   }
   
   public void add(EmpDeductMarks empdm)
   {
	   Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "insert into emp_deduct_marks(employee_number, deduct_marks) values(?, ?)";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, empdm.getEmployee_number());
            ps.setInt(2, 2);
            
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
   }
}
