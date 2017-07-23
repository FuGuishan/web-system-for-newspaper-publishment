package hit.poms.deliverManager.print.dao;

import hit.poms.deliverManager.print.entity.OrderList;
import hit.poms.util.DBManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class deliverManager_orderListDAO {
	
	
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
			StringBuffer sql = new StringBuffer("select cb.order_id order_id,cb.if_paied if_paied,cb.pub_id pub_id,p.pub_name pub_name,cb.customer_id customer_id, ")
								.append("c.customer_name customer_name,cb.pub_money pub_money,cb.pub_need_num pub_need_num,c.customer_address customer_address")
			                      .append(" from customer_book_sub cb,pub_message p,cus_message c")
			                      .append(" where cb.pub_id=p.pub_id and cb.customer_id=c.customer_id and cb.if_paied='0' ");
			if(id != null){
				sql.append(" and cb.order_id="+id);
			}                     
			
			System.out.println("---sql=" + sql);
			st = conn.prepareStatement(sql.toString());
			
			//4��ִ��������ע�⣺���������в�������Ҫ�ȸ�������ֵ
			rs = st.executeQuery();
			
			//5����rs���б������������װ��list��
			while(rs.next()){
				//����User���󣬽�ÿ����¼���ֶ�ֵ������ֵ�ķ�ʽ�洢��User������
				OrderList temp = new OrderList();
				temp.setOrder_id(rs.getLong("order_id"));
				temp.setIf_paied(rs.getString("if_paied"));
				temp.setPub_id(rs.getLong("pub_id"));
				temp.setPub_name(rs.getString("pub_name"));
				temp.setCustomer_id(rs.getLong("customer_id"));
				temp.setCustomer_name(rs.getString("customer_name"));
				temp.setPub_money(rs.getDouble("pub_money"));
				temp.setPub_need_num(rs.getString("pub_need_num"));
				temp.setCustomer_address(rs.getString("customer_address"));
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
