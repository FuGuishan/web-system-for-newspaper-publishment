package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.Praise;
import zhouyou.control.callcenter.util.DBManager;

public class PraiseDAO {
	public void add(Praise praise) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象
		String praise_id = "";
		String sql_seq1 = "select t_praise_seq.nextval id from dual";
		try {
			ps = conn.prepareStatement(sql_seq1);
			rs = ps.executeQuery();
			while (rs.next()) {
				praise_id = rs.getString("id");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql = "insert into praises(praise_type, area, employee_number, customer_number, customer_tel, content_detail, praise_id, status)"
				+ " values(?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);

			if (praise.getPraise_type() != null)
				ps.setString(1, praise.getPraise_type());
			else
				ps.setString(1, "");

			if (praise.getArea() != null)
				ps.setString(2, praise.getArea());
			else
				ps.setString(2, "");

			if (praise.getEmployee_number() != null)
				ps.setString(3, praise.getEmployee_number());
			else
				ps.setString(3, "");

			if (praise.getCustomer_number() != null)
				ps.setString(4, praise.getCustomer_number());
			else
				ps.setString(4, "");

			if (praise.getCustomer_tel() != null)
				ps.setString(5, praise.getCustomer_tel());
			else
				ps.setString(5, "");

			if (praise.getContent_detail() != null)
				ps.setString(6, praise.getContent_detail());
			else
				ps.setString(6, "");

			ps.setString(7, praise_id);
			ps.setString(8, "HavenotSeen");
			ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	public List<Praise> query() {
		List<Praise> list = new ArrayList<Praise>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		StringBuffer sql = new StringBuffer(
				"select * from praises where 1 = 1 and status = 'HavenotSeen'");
		try {
			ps = conn.prepareStatement(sql.toString());
			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Praise temp = new Praise();
				temp.setPraise_type(rs.getString("praise_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setPraise_id(rs.getString("praise_id"));
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
	
	public void updateStatusToDealed(Praise praise) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "update praises set status = 'Dealed' where praise_id = ?";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, praise.getPraise_id());
		
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	public void updateStatusToIgnored(Praise praise) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "update praises set status = 'Ignored' where praise_id = ?";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, praise.getPraise_id());
		
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
}
