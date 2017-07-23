package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.ComplainType;
import zhouyou.control.callcenter.util.DBManager;

public class ComplainTypeDAO {
   public List<ComplainType> query()
   { 
	    List<ComplainType> list = new ArrayList<ComplainType>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		//获得连接
		conn = DBManager.getConnection();
		//构建查询的语句对象
		StringBuffer sql = new StringBuffer ("select * from complain_type where 1 = 1 ");
		try {
			ps = conn.prepareStatement(sql.toString());
			//执行查询
			rs = ps.executeQuery();
		
			//处理查询结果
			while (rs.next())
			{
				ComplainType temp = new ComplainType();
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setComplain_type_id(rs.getString("complain_type_id"));
				list.add(temp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
		return list;
   }
   
   public ComplainType queryById(String complain_type_id)
   { 
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ComplainType temp = new ComplainType();
		//获得连接
		conn = DBManager.getConnection();
		//构建查询的语句对象
		StringBuffer sql = new StringBuffer ("select * from complain_type where complain_type_id = ? ");
		try {
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1,complain_type_id);
			//执行查询
			rs = ps.executeQuery();
		     
			//处理查询结果
			while (rs.next())
			{
				temp.setComplain_type(rs.getString("complain_type"));
				temp.setComplain_type_id(rs.getString("complain_type_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
		return temp;
   }
   
   public void add(ComplainType comtype)
   {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		//获得连接
		conn = DBManager.getConnection();
		
		
		String complain_type_id = "";
		String sql_seq1 = "select t_complain_type_seq.nextval id from dual";
		try {
			ps = conn.prepareStatement(sql_seq1);
			rs = ps.executeQuery();
			while (rs.next()) {
				complain_type_id = rs.getString("id");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		//构建查询的语句对象
		StringBuffer sql = new StringBuffer ("insert into complain_type(complain_type, complain_type_id) values(?, ?)");
		try {
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, comtype.getComplain_type());
			ps.setString(2, complain_type_id);
			//执行查询
		    ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
   }
   
   
   public void delete(ComplainType comtype)
   {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		//获得连接
		conn = DBManager.getConnection();
		//构建查询的语句对象
		StringBuffer sql = new StringBuffer ("delete from complain_type where complain_type_id = ? ");
		try {
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, comtype.getComplain_type_id());
			//执行查询
		    ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally
		{
			// 释放连接资源
			DBManager.closeAll(conn, ps, rs);
		}
   }
}
