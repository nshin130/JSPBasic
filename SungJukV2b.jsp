<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
 <%-- SungJukV2a.html=> SungJukV2b.jsp --%>

<jsp:useBean id = "sj" class="nshin.Sungjuk" />
<%-- SungJuk sj = new SungJuk();과 같은  --%>

<jsp:setProperty name = "sj" property="*" />
<%-- 	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat")); --%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램v2b</title>
</head>
<body>
<h1>성적처리 프로그램</h1>
<p>이름: <jsp:getProperty name="sj" property="name"/></p>
<p>국어: <jsp:getProperty name="sj" property="kor"/></p>
<p>영어: <jsp:getProperty name="sj" property="eng"/></p>
<p>수학: <jsp:getProperty name="sj" property="mat"/></p>
<p>총점: <jsp:getProperty name="sj" property="tot"/></p>
<p>평균: <jsp:getProperty name="sj" property="avg"/></p> 
</body>
</html>