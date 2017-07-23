package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.Complain;
import zhouyou.control.callcenter.util.DBManager;

/**
 * 客服中心的处理投诉DAO
 * 
 * @author zy
 * 
 */
public class ComplainDAO {
	public List<Complain> query() {
		List<Complain> list = new ArrayList<Complain>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		StringBuffer sql = new StringBuffer(
				"select * from complains where 1 = 1 and (status = 'HavenotDeal' or status = 'feedbacked') ");
	//	System.out.println(sql.toString());
		try {
			ps = conn.prepareStatement(sql.toString());

			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Complain temp = new Complain();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setComplain_id(rs.getString("complain_id"));
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
		return list;
	}

	public void add(Complain complain) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象
		String complain_id = "";
		String sql_seq1 = "select t_complain_seq.nextval id from dual";
		try {
			ps = conn.prepareStatement(sql_seq1);
			rs = ps.executeQuery();
			while (rs.next()) {
				complain_id = rs.getString("id");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql = "insert into complains(complain_type, area, employee_number, customer_number, customer_tel, content_detail, complain_id, status)"
				+ " values(?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			ps = conn.prepareStatement(sql);

			if (complain.getComplain_type() != null)
				ps.setString(1, complain.getComplain_type());
			else
				ps.setString(1, "");

			if (complain.getArea() != null)
				ps.setString(2, complain.getArea());
			else
				ps.setString(2, "");

			if (complain.getEmployee_number() != null)
				ps.setString(3, complain.getEmployee_number());
			else
				ps.setString(3, "");

			if (complain.getCustomer_number() != null)
				ps.setString(4, complain.getCustomer_number());
			else
				ps.setString(4, "");

			if (complain.getCustomer_tel() != null)
				ps.setString(5, complain.getCustomer_tel());
			else
				ps.setString(5, "");

			if (complain.getContent_detail()!= null)
				ps.setString(6, complain.getContent_detail());
			else
				ps.setString(6, "");
          
			ps.setString(7, complain_id);
            ps.setString(8, "HavenotDeal");
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	
	public void updateStatusToDealed(Complain complain) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "update complains set status = 'Dealed' where complain_id = ?";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, complain.getComplain_id());
		
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
    
	public void updateStatusToIgnored(Complain complain) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象

		String sql = "update complains set status = 'Ignored' where complain_id = ?";
		try {
			ps = conn.prepareStatement(sql);
            ps.setString(1, complain.getComplain_id());
		
		    ps.executeUpdate();
		    
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	public void addFeedback(Complain complain) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();

		// 构建查询的语句对象
        
		String sql = "update complains set feedback = ? ,status = 'feedbacked' where complain_id = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, complain.getFeedback());
            ps.setString(2, complain.getComplain_id());
            
		    ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {

			DBManager.closeAll(conn, ps, rs);
		}
	}
	
	public List<Complain> queryDealedComplains() {
		List<Complain> list = new ArrayList<Complain>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		//按照登记的先后顺序显示，越后面登记的排在越前面
		StringBuffer sql = new StringBuffer(
				"select * from complains where 1 = 1 and (status = 'Dealed' or status = 'Ignored') order by complain_id desc ");
	//	System.out.println(sql.toString());
		try {
			ps = conn.prepareStatement(sql.toString());

			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Complain temp = new Complain();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setComplain_id(rs.getString("complain_id"));
				temp.setStatus(rs.getString("status"));
				temp.setFeedback(rs.getString("feedback"));
			//	System.out.println(temp.getFeedback());
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
		return list;
	}
	
	public List<Complain> queryByCustomer_number(String customer_number) {
		List<Complain> list = new ArrayList<Complain>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		StringBuffer sql = new StringBuffer(
				"select * from complains where 1 = 1 and customer_number = ? order by complain_id desc");
		try {
			ps = conn.prepareStatement(sql.toString());
            ps.setString(1, customer_number);
			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Complain temp = new Complain();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setComplain_id(rs.getString("complain_id"));
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
		return list.size()>0 ? list : null;
	}
	
	public List<Complain> queryIgnoredComplains() {
		List<Complain> list = new ArrayList<Complain>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		//按照登记的先后顺序显示，越后面登记的排在越前面
		StringBuffer sql = new StringBuffer(
				"select * from complains where 1 = 1 and  status = 'Ignored' order by complain_id desc ");
	//	System.out.println(sql.toString());
		try {
			ps = conn.prepareStatement(sql.toString());

			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Complain temp = new Complain();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setComplain_id(rs.getString("complain_id"));
				temp.setStatus(rs.getString("status"));
				temp.setFeedback(rs.getString("feedback"));
			//	System.out.println(temp.getFeedback());
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
		return list.size() > 0? list : null;
	}
	
	public List<Complain> queryIgnoredByEmployee_number(String customer_number) {
		List<Complain> list = new ArrayList<Complain>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 获得连接
		conn = DBManager.getConnection();
		// 构建查询的语句对象
		StringBuffer sql = new StringBuffer(
				"select * from complains where 1 = 1 and employee_number = ? and status = 'Ignored' order by complain_id desc");
		try {
			ps = conn.prepareStatement(sql.toString());
            ps.setString(1, customer_number);
			// 执行查询
			rs = ps.executeQuery();

			// 处理查询结果
			while (rs.next()) {
				Complain temp = new Complain();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setArea(rs.getString("area"));
				temp.setContent_detail(rs.getString("content_detail"));
				temp.setCustomer_number(rs.getString("customer_number"));
				temp.setCustomer_tel(rs.getString("customer_tel"));
				temp.setEmployee_number(rs.getString("employee_number"));
				temp.setComplain_id(rs.getString("complain_id"));
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
		return list.size()>0 ? list : null;
	}
}
