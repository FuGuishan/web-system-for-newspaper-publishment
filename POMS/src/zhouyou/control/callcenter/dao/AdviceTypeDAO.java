package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.AdviceType;
import zhouyou.control.callcenter.util.DBManager;

public class AdviceTypeDAO {
	 public List<AdviceType> query()
	   { 
		    List<AdviceType> list = new ArrayList<AdviceType>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("select * from advice_type where 1 = 1 order by advice_type_id desc");
			try {
				ps = conn.prepareStatement(sql.toString());
				//执行查询
				rs = ps.executeQuery();
			
				//处理查询结果
				while (rs.next())
				{
					AdviceType temp = new AdviceType();
					temp.setAdvice_type(rs.getString("advice_type"));
					temp.setAdvice_type_id(rs.getString("advice_type_id"));
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
	 
	 
	 public void add(AdviceType advtype)
	   {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			
			
			String advice_type_id = "";
			String sql_seq1 = "select t_advice_type_seq.nextval id from dual";
			try {
				ps = conn.prepareStatement(sql_seq1);
				rs = ps.executeQuery();
				while (rs.next()) {
					advice_type_id = rs.getString("id");
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("insert into advice_type(advice_type, advice_type_id) values(?, ?)");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1, advtype.getAdvice_type());
				ps.setString(2, advice_type_id);
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
	 
	 public void delete(AdviceType advtype)
	   {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("delete from advice_type where advice_type_id = ? ");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1, advtype.getAdvice_type_id());
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
	 
	 public AdviceType queryById(String advice_type_id)
	   { 
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			AdviceType temp = new AdviceType();
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("select * from advice_type where advice_type_id = ? ");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1,advice_type_id);
				//执行查询
				rs = ps.executeQuery();
			     
				//处理查询结果
				while (rs.next())
				{
					temp.setAdvice_type(rs.getString("advice_type"));
					temp.setAdvice_type_id(rs.getString("advice_type_id"));
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
}
