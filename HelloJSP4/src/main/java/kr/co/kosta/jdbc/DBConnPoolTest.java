package kr.co.kosta.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnPoolTest {
	public Connection con;
	public Statement stmt;
	public PreparedStatement pstmt;
	public ResultSet rs;
	
	public DBConnPoolTest() {
		try {
			//DataSource(Connection Pool) 얻기
			Context context = new InitialContext();
			Context ctx = (Context) context.lookup("java:comp/env");
			DataSource  dataSource =(DataSource)ctx.lookup("dbcp_mysql");
			
			
			con =dataSource.getConnection();
			
			System.out.println("DB연결 성공( 커넥션 풀)");
		} catch (NamingException | SQLException e) {
			
			System.out.println("DB연결 성공( 커넥션 실패)");
			e.printStackTrace();
		}
	}
	//연결 해제 및 자원 반납
	public void close() {
		if(con != null)
			try {
				con.close();
				System.out.println("JDBC 자원 해제");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
