<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width:100%}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>

<%@ include file="topMenu.jsp" %>


</thead>
<tbody>
  <tr>
    <td class="tg-0pky">
    
		<form method="POST" action="/login">
			<p>로그인	ID : <input type="text" name="userid"/>  PASSWORD : <input type="text" name="passwd"/>
			<input type="submit" value="로그인" /></p> [<a href="/agree">회원가입</a>]
		</form>
		    
    </td>
  </tr>
  <tr>
    <td class="tg-0pky">
    <table class="tg">
	    <tbody>
		  <tr>
		    <td class="tg-0pky">새로 등록된 책</td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		  </tr>
		  <tr>
		    <td class="tg-0pky">
		    
		    
					<table>  
						<thead>  
						<tr>  
						<td>제목</td>  
						<td>카테고리</td>  
						<td>가격</td>  
						</tr>  
						</thead>  
						<tbody>  
						
								<c:forEach var="row" items="${data}">  
								<tr>  
									<td>  
									<a href="/detail?bookId=${row.book_id}">  
									${row.title}  </a>  
								</td>  
								<td>${row.category}</td>  
								<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${row.price}" /></td>  
								</tr>  
								</c:forEach>  
					</tbody>  
					</table>  
		    
		    
		    
		    </td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		    <td class="tg-0pky"></td>
		  </tr>
		 </tbody>		  
    </table>
    </td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
  </tr>
</tbody>
</table>



<hr>


<hr>




<hr>



<hr>



<hr>
</body>
</html>