<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! //변수선언
	String name;
	int kor, eng, mat;
	int tot;
	double avg;
	char grd;
%>    
<%! //메서드선언
	void computeSungJuk() {
		tot = kor + eng + mat;
		avg = (double)tot / 3;
	}
%>
<%	//코드실행 (scriptlet) 
	name ="혜교";
	kor = 99; 
	eng = 54;
	mat = 85;
%>
<%	//메서드호출
	computeSungJuk();
%>   
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 프로그램</title>
</head>
<body>
<h1>성적처리 프로그램</h1>
<p>이름: <% out.print(name); %></p>
<p>국어: <%=kor %></p>
<p>영어: <%=eng %></p>
<p>수학: <%=mat %></p>
<p>총점: <%=tot %></p>
<p>평균: <%=avg %></p>


</body>
</html>