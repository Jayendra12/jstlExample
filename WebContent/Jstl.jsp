<%@page import="com.seed.model.Student"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>name</th>
<th>contactNo</th>
<th>roll</th>
</tr>

<% 
ArrayList list=(ArrayList)session.getAttribute("list");
Iterator it=list.iterator();


%>
  
<c:if test="${list!=null}">  
if(list!=null){
	
	<c:forEach var="st" begin="1" end="list.size()">  
	  
	
while(it.hasNext()){
	Student st=(Student) it.next();
	


<tr>
<td><%= st.getName() %></td>
<td><%= st.getContact() %></td>
<td><%= st.getRoll() %></td>
</tr>
</c:forEach> 
</c:if>
</table>
</body>
</html>