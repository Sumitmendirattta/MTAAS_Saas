$(document).ready(function(){
	
	
$.ajax({
	
type : "GET",
url : "GetTesters.jsp",
dataType : "json",
contentType : "json",
success :function(response){
	
	
	
	
	alert("success");
	alert("Response"+ response);
	
	
	
},
error : function(err){
	
	
	alert("err");
	alert("Error"+ err);
	
	
}






});

	
	
});