package zhouyou.control.callcenter.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBManager {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * ��ȡ��ݿ�����
	 * 
	 * @return
	 */
	public static Connection getConnection_old() {
		Connection conn = null;

		String url = "jdbc:oracle:thin:@10.25.85.141:1521:oracle";
		String username = "scott";
		String password = "tiger";

		try {
			conn = DriverManager.getConnection(url, username, password);
			if (conn != null) {
				System.out.println("--getConnection--");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

	/**
	 * �ͷ���ݿ���Դ
	 * 
	 * @param conn
	 * @param st
	 * @param rs
	 */
	public static void closeAll(Connection conn, Statement st, ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (st != null)
				st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static Connection getConnection() {
		Connection conn = null;
        
	//	System.out.println("---in lian jie chi---");
        try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/ORACLE");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        

		return conn;
	}
}
