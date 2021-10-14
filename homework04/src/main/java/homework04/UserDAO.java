package homework04;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.servlet.http.HttpServlet;
import javax.sql.DataSource;

public class UserDAO extends HttpServlet {
//
//	String dburl = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
//	String dbuser = "scott";
//	String dbpwd = "tiger";
	
	public UserDAO() {
	}
	

	public void getUser(UserVO userVO) {
		//��������� �ʱ�ȭ �ϴ°� ����
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		//������ ��´�
		
		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			con = DriverManager.getConnection(dburl,dbuser,dbpwd);

			//������Ű���� ����.xml�� �α��������� �Է��ϰ� �� ���� �����ͼ� ����Ѵ�.
			InitialContext	ic = new InitialContext();
			DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
			con = ds.getConnection();
			System.out.println("DAO  in1");
			//����ǥ�� pStmt�� �ִ� ������ �Է� �Ѵ�.
			pStmt = con.prepareStatement("INSERT INTO member VALUES(?,?,?,?,?,?,?)");
			pStmt.setString(1,userVO.getId());
			pStmt.setString(2,userVO.getPwd());
			pStmt.setString(3,userVO.getName());
			pStmt.setString(4,userVO.getSex());
			pStmt.setString(5,userVO.getWork());
			pStmt.setString(6,userVO.getPhone());
			pStmt.setString(7,userVO.getAddr());
			
			rs = pStmt.executeQuery();
			System.out.println("DAO  2");
			if(rs.next()) {
				System.out.println(userVO.getName()+"ȸ�����ԵǾ����ϴ�");
				userVO.setActive(true);
			}else {
				System.out.println(userVO.getName()+"ȸ�����Կ� �����߽��ϴ�");
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(Exception e1) {}
			}
			if(pStmt!=null) {
				try {
					pStmt.close();
				}catch(Exception e2) {}
			}
			if(con!=null) {
				try {
					con.close();
				}catch(Exception e3) {}
			}
		}
	
		}
		
		
		public UserVO getfind(String id,String pwd) {

			Connection con = null;
			PreparedStatement pStmt = null;
			ResultSet rs = null;
			UserVO userVO = new UserVO();
			System.out.println("DAO  1");
			try {
				//Class.forName("oracle.jdbc.driver.OracleDriver");
				//con = DriverManager.getConnection(dburl,dbuser,dbpwd);
				//System.out.println("DAO  1");
				InitialContext	ic = new InitialContext();
				DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
				con = ds.getConnection();
				System.out.println("DAO  se1");
				
				
				pStmt = con.prepareStatement("SELECT id, pwd,name, gender,work,phone,addr FROM member WHERE id=? AND pwd=?");
				pStmt.setString(1,id);
				pStmt.setString(2,pwd);

				rs = pStmt.executeQuery();
				System.out.println("DAO  2");
				if(rs.next()) {
					System.out.println("db���� Ȯ�� �� id,pwd ==> :"+id+":"+pwd);
					userVO.setId(rs.getString("id"));
					userVO.setName(rs.getString("name"));
					userVO.setSex(rs.getString("gender"));
					userVO.setWork(rs.getString("work"));
					userVO.setPhone(rs.getString("phone"));
					userVO.setAddr(rs.getString("addr"));
					
						
					userVO.setActive(true);
				}else {
					System.out.println("db�� <"+id+">�� �ش��ϴ� �ڷᰡ �����ϴ�.");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs != null) {
					try {
						rs.close();
					}catch(Exception e1) {}
				}
				if(pStmt!=null) {
					try {
						pStmt.close();
					}catch(Exception e2) {}
				}
				if(con!=null) {
					try {
						con.close();
					}catch(Exception e3) {}
				}
			}
			return userVO;
	}
		public void getupdateUser(UserVO userVO) {
			//��������� �ʱ�ȭ �ϴ°� ����
			Connection con = null;
			PreparedStatement pStmt = null;
			ResultSet rs = null;
			//������ ��´�
			
			try {
//				Class.forName("oracle.jdbc.driver.OracleDriver");
//				con = DriverManager.getConnection(dburl,dbuser,dbpwd);

				//������Ű���� ����.xml�� �α��������� �Է��ϰ� �� ���� �����ͼ� ����Ѵ�.
				InitialContext	ic = new InitialContext();
				DataSource ds = (DataSource)ic.lookup("java:comp/env/jdbc/ora");
				con = ds.getConnection();
				System.out.println("DAO  1");
				//����ǥ�� pStmt�� �ִ� ������ �Է� �Ѵ�.
				pStmt = con.prepareStatement("update member set NAME=?,gender=?,WORK=?,PHONE=?,ADDR=? where ID=?");
				pStmt.setString(1,userVO.getName());
				pStmt.setString(2,userVO.getSex());
				pStmt.setString(3,userVO.getWork());
				pStmt.setString(4,userVO.getPhone());
				pStmt.setString(5,userVO.getAddr());
				pStmt.setString(6,userVO.getId());
				
				rs = pStmt.executeQuery();
				System.out.println("DAO  up2");
				if(rs.next()) {
					System.out.println(userVO.getName()+"�� �������� ������ �Ϸ�Ǿ����ϴ�.");
					userVO.setActive(true);
				}else {
					System.out.println(userVO.getName()+"�� �������� ������ �Ұ����մϴ�.");
				}

			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				if(rs != null) {
					try {
						rs.close();
					}catch(Exception e1) {}
				}
				if(pStmt!=null) {
					try {
						pStmt.close();
					}catch(Exception e2) {}
				}
				if(con!=null) {
					try {
						con.close();
					}catch(Exception e3) {}
				}
			}
		
			}
			
			

}

