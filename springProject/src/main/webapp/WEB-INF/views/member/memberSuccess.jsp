<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
 <head>
  <title>회원가입 성공</title>
 </head>
 <body>
  <h1>회원 가입이 완료되었습니다. 축하합니다.</h1>

   <p>이름 : ${ data.korname }</p>
   <p>아이디 : ${ data.userid }</p>
   <p>비밀번호 : ${ data.passwd }</p>
  <p>입력일 : <fmt:formatDate value="${data.rdate}" pattern="yyyy.MM.dd HH:mm:ss" /></p>
  
  <a href="/index"> 로그인 하러 가기</a>
 </body>
</html>