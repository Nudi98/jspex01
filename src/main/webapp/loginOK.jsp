<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String hobby = request.getParameter("hobby");
		String gender = request.getParameter("gender");
		String intro = request.getParameter("intro");
		String[] subject = request.getParameterValues("subject");
	%>
	로그인하신 아이디는 <%= id %> 입니다.<br>
	입력하신 비밀번호는 <%= pw %> 입니다.<br>
	취미 : <%= hobby %><br>
	성별 : <%= gender %><br>
	자기소개 : <%= intro %><br>
	좋아하는 과목 : <br>
	<%
		if(subject != null){
			for(int i=0;i<subject.length;i++){
				out.println(subject[i]);
			}
		}
		else{
			System.out.println("없음");
		}
	%>
	
</body>
</html>