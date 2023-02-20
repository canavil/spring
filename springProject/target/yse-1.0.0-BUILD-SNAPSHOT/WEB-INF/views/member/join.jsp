<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
 <head>
  <title>회원가입</title>
  <style>

table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
 </head>
 <body>
 
 <table width="100%">
 <tr>
 	<td height="100px" align="center">
 		HEAD
 	</td>
 </tr>
 
 <tr>
 	<td align="center">
 			
		  <h1>회원가입하기 step1</h1>
		  
		  <form method="POST" action="memberStep2">
		      
			<table class="type09">
			    <thead>
   				<tr>			    
		        	<th scope="row"></th>
			        <th > </th>
			    </tr>	
	
			    </thead>
			    <tbody>
			    <tr>			    
		        	<th scope="row">이름</th>
			        <td ><input type="text" name="korname" /></th>
			    </tr>			    
			    <tr>
			        <th scope="row">아이디</th>
			        <td><input type="text" name="userid" /></td>
			    </tr>
			    <tr>
			        <th scope="row">비밀번호</th>
			        <td><input type="text" name="passwd" /></td>
			    </tr>
			    
			    </tbody>
			</table>
		  </form>
		  			
 			
 	</td>
 </tr>
 
   <tr>
 	<td align="center">
 		BY SAHARA
 	</td>
   </tr>
  </table>
 


 </body>
</html>