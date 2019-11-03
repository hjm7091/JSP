<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "scott";
	String upw = "tiger";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uid, upw);
			int n;
			String query = "insert into memberforpre (id, pw, name, phone) values (?, ?, ?, ?)";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, "abc");
			pstmt.setString(2, "123");
			pstmt.setString(3, "홍길동");
			pstmt.setString(4, "010-1234-5678");
			n = pstmt.executeUpdate();
			
			pstmt.setString(1, "def");
			pstmt.setString(2, "456");
			pstmt.setString(3, "홍길자");
			pstmt.setString(4, "010-9012-3456");
			n = pstmt.executeUpdate();
			
			pstmt.setString(1, "ghi");
			pstmt.setString(2, "789");
			pstmt.setString(3, "홍길순");
			pstmt.setString(4, "010-7890-1234");
			n = pstmt.executeUpdate();
			
			pstmt.setString(1, "AAA");
			pstmt.setString(2, "111");
			pstmt.setString(3, "이길동");
			pstmt.setString(4, "010-1234-1111");
			n = pstmt.executeUpdate();
			
			if(n==1)
				out.println("insert success");
			else
				out.println("insert fail");
					
		}catch(Exception e1){
			e1.printStackTrace();
		}finally{
			try{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	%>
	
	<br />
	<a href="memberDataView.jsp">회원정보 보기</a>
</body>
</html>