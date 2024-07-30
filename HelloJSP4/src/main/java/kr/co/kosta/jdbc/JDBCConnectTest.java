package kr.co.kosta.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBCConnectTest {
	public Connection con;
	public Statement stmt;
	public PreparedStatement pstmt;
	public ResultSet rs;
	
	//기본 생성자
	public JDBCConnectTest() {
		try {
			// Driver Load
			Class.forName("com.mysql.cj.jdbc.Driver");
			
				//DB 연결
				String url ="jdbc:mysql://localhost:3306/teampro";
				String id ="kosta";
				String pwd ="pass123#";
				
			con =DriverManager.getConnection(url, id, pwd);
			
			System.out.println("DB 연결 성공(기본 생성자");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
//	생성자 오버로딩
	public JDBCConnectTest(String driver, String url, String id, String pwd) {
		
				
			try {
				//드라이버 로드
				Class.forName(driver);
				//DB 연결
				con =DriverManager.getConnection(url,id,pwd);
				System.out.println("DB 연결 성공(생성자 오버로딩1)");
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
	}
// 생성자 오버로딩2
	public JDBCConnectTest(ServletContext application) {
		String driver = application.getInitParameter("MySQLDriver");
			
		try {
			//드라이버 로드
			Class.forName(driver);			
			//DB 연결
			String url =application.getInitParameter("MySQLURL");
			String id= application.getInitParameter("MySQLId");
			String pwd=application.getInitParameter("MySQLPwd");
			con =DriverManager.getConnection(url,id,pwd);
			
			System.out.println("DB 연결 성공(생성자 오버로딩2)");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
}
//	연결 헤제 및 자원 반납
	public void close() {
		try {
			if(rs!=null)rs.close();
			if(pstmt !=null)pstmt.close();
			if(stmt !=null)stmt.close();
			if(con != null)con.close();
			
			System.out.println("JDBC 자원 해제");
			
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
