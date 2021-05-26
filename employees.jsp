<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:set var="url">jdbc:mariadb://bigdata.ckwuhzosrgyo.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" user="${usr}" password="${pwd}"/> 

<c:set var="hdate" value="${param.hdate1}-${param.hdate2}-${param.hdate3}" />
<c:set var="phone" value="${param.phone1}-${param.phone2}-${param.phone3}" />

<sql:update dataSource="${mariadb}" var="cnt">
	insert into EMPLOYEES values (?,?,?,?,?,?,?,?,?,?,?)
	<sql:param value="${param.empid}"/>   
	<sql:param value="${param.fname}"/>   
	<sql:param value="${param.lname}"/>   
	<sql:param value="${param.emaiil}"/>   
	<sql:param value="${phone}"/>   
	<sql:param value="${hdate}"/>   
	<sql:param value="${param.jobid}"/>   
	<sql:param value="${param.sal}"/>   
	<sql:param value="${param.comm}"/>   
	<sql:param value="${param.mgrid}"/>   
	<sql:param value="${param.deptid}"/>   
</sql:update>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employees 처리결과</title>
</head>
<body>
<h1>employees 처리결과</h1>
<p><c:if test="${cnt gt 0}">complete!</c:if></p>

<p><a href="employees2.jsp">registered Employees</a></p>

</body>
</html>