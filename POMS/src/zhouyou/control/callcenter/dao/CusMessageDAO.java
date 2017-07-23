package zhouyou.control.callcenter.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import zhouyou.control.callcenter.util.DBManager;

public class CusMessageDAO {
	public boolean exist(Integer customer_id)
	   {
		    Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			boolean flag = false;
			// 获得连接
			conn = DBManager.getConnection();

			// 构建查询的语句对象

			String sql = "select * from cus_message where customer_id = ?";
			try {
				ps = conn.prepareStatement(sql);
	            ps.setInt(1, customer_id);
			
			    rs = ps.executeQuery();
			    flag = rs.next();
			    
			} catch (SQLException e) {

				e.printStackTrace();
			} finally {

				DBManager.closeAll(conn, ps, rs);
			}
		   return flag; 
	   }
}
