package hit.poms.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * ���ߣ�dsz
 * ʱ�䣺2014-07-15 AM
 * ���ܣ����ݿ�ʹ�õĹ����࣬��ȡ���ݿ����Ӷ����ͷ����ݿ���Դ��
 * @author new
 * 
 */
public class DBManager {
	// 1�����ȼ���Oracle��������
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * ��ȡ���ݿ����Ӷ���
	 * 
	 * @return �������Ӷ���
	 */
	public static Connection getConnection() {
		Connection conn = null;
//		System.out.println("---use connection pool.");
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/ORACLE");
			conn = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}
	public static Connection getConnection_old() {
		Connection conn = null;
		String url = "jdbc:oracle:thin:@10.25.85.143:1521:oracle";
		String username = "scott";
		String password = "tiger";

		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}

	/**
	 * �ͷ���ص����ݿ���Դ
	 * 
	 * @param conn  ���ݿ����Ӷ���
	 * @param st  ������
	 * @param rs  ���������
	 */
	public static void closeAll(Connection conn, Statement st, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (st != null) {
				st.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
