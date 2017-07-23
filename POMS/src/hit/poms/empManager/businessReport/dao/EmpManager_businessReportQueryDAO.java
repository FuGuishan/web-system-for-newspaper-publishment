package hit.poms.empManager.businessReport.dao;

import hit.poms.empManager.businessReport.entity.Report;
import hit.poms.util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.xml.registry.infomodel.User;

public class EmpManager_businessReportQueryDAO {
	
	
	public List doQuery(Long id){
		//1���������ݿ���ض���
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		List list = new ArrayList();
		
		try{
			//2����ȡ���ݿ����Ӷ���
			conn = DBManager.getConnection();

			//3������������
			//��Ϊ��Ҫ����ѯ������Ӧ���������ƣ�����sql�����Ҫ��̬���
			StringBuffer sql = new StringBuffer("select e1.emp_id emp_id,emp_name, p1.pub_id pub_id,p1.pub_name,e2.emp_order,e2.emp_delivery,e2.fin_time ")
			                      .append(" from emp_message e1,emp_sell_pub e2,pub_message p1")
			                      .append(" where e1.emp_id=e2.emp_id and p1.pub_id=e2.pub_id ");
			if(id != null){
				sql.append(" and e1.emp_id="+id);
			}                     
			
			System.out.println("---sql=" + sql);
			st = conn.prepareStatement(sql.toString());
			
			//4��ִ��������ע�⣺���������в�������Ҫ�ȸ�������ֵ
			rs = st.executeQuery();
			
			//5����rs���б������������װ��list��
			while(rs.next()){
				//����User���󣬽�ÿ����¼���ֶ�ֵ������ֵ�ķ�ʽ�洢��User������
				Report temp = new Report();
				temp.setEmp_name(rs.getString("emp_name"));
				temp.setEmp_id(rs.getLong("emp_id"));
				temp.setPub_id(rs.getLong("pub_id"));
				temp.setPub_name(rs.getString("pub_name"));
				temp.setEmp_order(rs.getLong("emp_order"));
				temp.setEmp_delivery(rs.getLong("emp_delivery"));
				temp.setFin_time(rs.getString("fin_time").substring(0, 10));
				
				//�Ѷ�����뵽list������
				list.add(temp);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{//�ͷ��������ݿ���Դ			
			DBManager.closeAll(conn, st, rs);
		}
		
		return list.size()>0 ? list : null; //���list��û��Ԫ�أ���ô����null��
		
	}
	
}
