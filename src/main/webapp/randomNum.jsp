<%@page import="common.LottoCreater"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/springlegacy/static/bootstrap5.1.3/css/bootstrap.css" />
<script src="/springlegacy/resources/jquery/jquery-3.6.0.js"></script>
</head>
<body>
	<h2>RandomNum</h2>
	<%
	//스크립틀릿 내에서 코드 작성이 가능하다.
	Random random = new Random();
	out.println("난수: " + random.nextInt(100));
	%>
	
	<h2>Lotto6/45</h2>
	<%
	//클래스도 동일하게 사용할 수 있다. 
	LottoCreater lottoCreater = new LottoCreater();
	int[] lottoNum = lottoCreater.lotto();
	for(int lo : lottoNum){
		out.println(lo);
	}
	%>
</body>
</html>