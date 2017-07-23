package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.Advice;
import zhouyou.control.callcenter.util.DBManager;

public class AdviceDAO {
	public void add(Advice advice) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象
		String advice_id = "";
		String sql_seq1 = "select t_advice_seq.nextval id from dual";
		try {
			ps = conn.prepareStatement(sql_seq1);
			rs = ps.executeQuery();
			while (rs.next()) {
				advice_id = rs.getString("id");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql = "insert into advices(advice_type, area, employee_number, customer_number, customer_tel, content_detail, advice_id, status)"
				+ " values(?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);

			if (advice.getAdvice_type() != null)
				ps.setString(1, advice.getAdvice_type());
			else
				ps.setString(1, "");

			if (advice.getArea() != null)
				ps.setString(2, advice.getArea());
			else
				ps.setString(2, "");

			if (advice.getEmployee_number() != null)
				ps.setString(3, advice.getEmployee_number());
			else
				ps.setString(3, "");

			if (advice.getCustomer_number() != null)
				ps.setString(4, advice.getCustomer_number());
			else
				ps.setString(4, "");

			if (advice.getCustomer_tel() != null)
				ps.setString(5, advice.getCustomer_tel());
			else
				ps.setString(5, "");

			if (advice.getContent_detail()!= null)
				ps.setString(6, advice.getContent_detail());
			else
				ps.setString(6, "");
          
			ps.setString(7, advice_id);
            ps.setString(8, "HavenotSeen");
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	public List<Advice> query() {
		List<Advice> list = new ArrayList<Advice>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		StringBuffer sql = new StringBuffer(
				"select * from advices where 1 = 1 order by advice_id desc");
		try {
			ps = conn.prepareStatement(sql.toString());
			// 执行查询
			rs = ps.executeQuery();
			// 处理查询结果
			while (rs.next()) {
				Advice temp = new Advice();
				temp.setAdvice_type(rs.getString("advice_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setAdvice_id(rs.getString("advice_id"));
				temp.setStatus(rs.getString("status"));
				temp.setFeedback(rs.getString("feedback"));
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
		return list.size()>0?list:null;
	}
}
