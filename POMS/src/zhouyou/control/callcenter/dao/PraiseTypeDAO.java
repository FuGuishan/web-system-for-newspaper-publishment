package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import zhouyou.control.callcenter.entity.PraiseType;
import zhouyou.control.callcenter.util.DBManager;

public class PraiseTypeDAO {
	public List<PraiseType> query()
	   { 
		    List<PraiseType> list = new ArrayList<PraiseType>();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("select * from praise_type where 1 = 1 order by praise_type_id desc");
			try {
				ps = conn.prepareStatement(sql.toString());
				//执行查询
				rs = ps.executeQuery();
			
				//处理查询结果
				while (rs.next())
				{
					PraiseType temp = new PraiseType();
					temp.setPraise_type(rs.getString("praise_type"));
					temp.setPraise_type_id(rs.getString("praise_type_id"));
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
	
	
	public void add(PraiseType pratype)
	   {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			
			
			String praise_type_id = "";
			String sql_seq1 = "select t_praise_type_seq.nextval id from dual";
			try {
				ps = conn.prepareStatement(sql_seq1);
				rs = ps.executeQuery();
				while (rs.next()) {
					praise_type_id = rs.getString("id");
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
//			System.out.println("in praisetypedao :add");
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("insert into praise_type(praise_type, praise_type_id) values(?, ?)");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1, pratype.getPraise_type());
				ps.setString(2, praise_type_id);
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
	
	public void delete(PraiseType pratype)
	   {
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("delete from praise_type where praise_type_id = ? ");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1, pratype.getPraise_type_id());
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
	
	public PraiseType queryById(String praise_type_id)
	   { 
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			PraiseType temp = new PraiseType();
			//获得连接
			conn = DBManager.getConnection();
			//构建查询的语句对象
			StringBuffer sql = new StringBuffer ("select * from praise_type where praise_type_id = ? ");
			try {
				ps = conn.prepareStatement(sql.toString());
				ps.setString(1,praise_type_id);
				//执行查询
				rs = ps.executeQuery();
			     
				//处理查询结果
				while (rs.next())
				{
					temp.setPraise_type(rs.getString("praise_type"));
					temp.setPraise_type_id(rs.getString("praise_type_id"));
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
