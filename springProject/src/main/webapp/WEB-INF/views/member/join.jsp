<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>

<html>
 <head>
 
 <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script
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


<script type="text/javascript">
	$(function() {
	   $('#inputBtn').on('click', function() {
	    
	      if($('#korname').val().length < 1) {
	         alert('이름을 입력해 주세요.');
	         $('#korname').focus();
	         return false;
	      }
	      
 		  if($('#userid').val().length < 1) {
	         alert('아이디 입력해 주세요.');
	         $('#userid').focus();
	         return false;
	      }	      
	
	
 		  if($('#passwd').val().length < 1) {
	         alert('비밀번호 입력해 주세요.');
	         $('#passwd').focus();
	         return false;
	      }	      
	      
 		  if($('#passwdConfirm').val().length < 1) {
	         alert('확인 비밀번호 입력해 주세요.');
	         $('#passwdConfirm').focus();
	         return false;
	      }	      	
	      
	      if($('#passwd').val() != $('#passwdConfirm').val()) {
	         alert('비밀번호 다릅니다.');
	         $('#passwd').focus();
	         return false;
	      }	    
	      
	      if($('#userIdCheck').val()== "") {
	         alert('아이디 중복여부를 체크해주세요');
	         $('#userid').focus();
	         return false;
	      }	      	      
     
 	
 		  if($('#userIdCheck').val() != "Y") {
	         alert('아이디 중복여부를 체크해주세요');
	         $('#userid').focus();
	         return false;
	      }	   
      

		});
	});
	    


					
	//$('.id_ok').css("display", "none");
    //$('.id_already').css("display", "none");
                    					
	function fn_idChk() {
		//alert($("#userid").val());
		
		//userid 를 param.
        var userid =  $("#userid").val(); 
        		
		$.ajax({
			async : true,
			url : "memberIdCheck",
			type :"POST",
			data : {userid},
			dataTytpe: "json",
			
			success : function(data) {
				//alert(data);
				if(data == 1) {
					//사용 불가능		
					//alert("no");

					$("#userIdCheck").val('N');
					
					$('.id_already').css("display","inline-block");
					$('.id_ok').css("display", "none");
                    
				} else if(data ==0) {
				
					//alert("ok");				
					$("#userIdCheck").val('Y');
				
					//사용 가능
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
				}		
			}, 
   			error:function(request,status,error){
        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      		}
			
		})
	}


</script>
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
 			
		  <h1>회원가입하기 step2</h1>
		  
		  
		  
		  <form method="POST" action="memberStep2" >

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
			        <td ><input type="text" name="korname" id="korname"/></th>
			    </tr>			    
			    <tr>
			        <th scope="row">아이디</th>
			        <td><input type="text" name="userid" id="userid"/>  <button class="idChk" id="idChk" type="button" value="Y" onclick="javascript:fn_idChk();"/>중복확인</button>
			        
			         <!-- id ajax 중복체크 -->
					<span class="id_ok" >사용 가능한 아이디입니다.</span>
					<span class="id_already"><font color="red">누군가 이 아이디를 사용하고 있어요.</font></span>
			        
			        
			        </td>
			    </tr>
			    <tr>
			        <th scope="row">비밀번호</th>
			        <td><input type="text" name="passwd" id="passwd"/></td>
			    </tr>
			    <tr>
			        <th scope="row">비밀번호 확인</th>
			        <td><input type="text" name="passwdConfirm" id="passwdConfirm"/></td>
			    </tr>			    
			    <tr>
			        <th scope="row">아이디 점검여부</th>
			        <td><input type="text" name="userIdCheck" id="userIdCheck"  value=""/></td>
			    </tr>			   
			    <tr>
			        <th scope="row"> </th>
			        <td><!-- <input type="submit" value="회원 가입" /> -->
			        <button id="inputBtn">회원가입</button>
			        </td>
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
<script>

$('.id_ok').css("display", "none");
$('.id_already').css("display", "none");	
</script>
                 					
    


 </body>
</html>