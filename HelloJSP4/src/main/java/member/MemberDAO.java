package member;

import java.sql.SQLException;

import kr.co.kosta.jdbc.JDBCConnectTest;

public class MemberDAO extends JDBCConnectTest{
	
	public MemberDAO(String driver, String url, String id, String pwd) {
		super(driver,url,id,pwd);
		
	}
//	넘어온 아이디/패스워드와 일치하는 회원 정보 반환
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		
		String query = "SELECT id, pass, name, regidate \n"
				+ "FROM member \n"
				+ "where id = ? and pass = ?  ";
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, uid);		//쿼리문의 인파라미터값 설정
			pstmt.setString(2, upass);	//쿼리문의 인파라미터값 설정
			rs=pstmt.executeQuery();
			
			//결과 처리
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegdate(rs.getString(4));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;	//DTO 객체 반환
	}
		
}
