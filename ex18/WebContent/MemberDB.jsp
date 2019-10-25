<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection connection;
	Statement statement;
	ResultSet resultset;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "scott";
	String upw = "tiger";
	String query = "select * from member";
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
			connection = DriverManager.getConnection(url, uid, upw);
			statement = connection.createStatement();
			resultset = statement.executeQuery(query);
			
			while(resultset.next()){
				String id = resultset.getString("id");
				String pw = resultset.getString("pw");
				String name = resultset.getString("name");
				String phone = resultset.getString("phone");
				
				out.println("아이디 : "+id+", 비밀번호 : "+pw+", 이름 : "+name+", 전화번호 : "+phone+"<br />");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultset!=null) resultset.close();
				if(statement!=null) statement.close();
				if(connection!=null) connection.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	%>

</body>
</html>