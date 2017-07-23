package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import zhouyou.control.callcenter.entity.EmpBonus;
import zhouyou.control.callcenter.util.DBManager;

public class EmpBonusDAO {
	   public boolean exist(EmpBonus empb)
	   {
		    Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			boolean flag = false;
			// 获得连接
			conn = DBManager.getConnection();

			// 构建查询的语句对象

			String sql = "select * from emp_bonus where employee_number = ?";
			try {
				ps = conn.prepareStatement(sql);
	            ps.setString(1, empb.getEmployee_number());
			
			    rs = ps.executeQuery();
			    flag = rs.next();
			    
			} catch (SQLException e) {

				e.printStackTrace();
			} finally {

				DBManager.closeAll(conn, ps, rs);
			}
		   return flag; 
	   }
	   
	   public void update(EmpBonus empb)
	   {
		    Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			// 获得连接
			conn = DBManager.getConnection();

			// 构建查询的语句对象
			try {
				String sql = "select * from emp_bonus where employee_number = ? ";
				ps = conn.prepareStatement(sql);
	            ps.setString(1, empb.getEmployee_number());
	            rs = ps.executeQuery();
			    rs.next();
			    Integer marks = rs.getInt("bonus");
			    marks = marks + 2;
			    
			    
			    sql = "update emp_bonus set bonus = ? where employee_number = ?";
			    ps = conn.prepareStatement(sql);
			    ps.setInt(1, marks);
			    ps.setString(2, empb.getEmployee_number());
			    
			    ps.executeUpdate();
			    
			} catch (SQLException e) {

				e.printStackTrace();
			} finally {

				DBManager.closeAll(conn, ps, rs);
			}
	   }
	   
	   public void add(EmpBonus empb)
	   {
		    Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			// 获得连接
			conn = DBManager.getConnection();

			// 构建查询的语句对象

			String sql = "insert into emp_bonus(employee_number, bonus) values(?, ?)";
			try {
				ps = conn.prepareStatement(sql);
	            ps.setString(1, empb.getEmployee_number());
	            ps.setInt(2, 2);
	            
			    ps.executeUpdate();
			    
			} catch (SQLException e) {

				e.printStackTrace();
			} finally {

				DBManager.closeAll(conn, ps, rs);
			}
	   }
}
