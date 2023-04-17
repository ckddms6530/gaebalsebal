<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<input name="uploadFiles" type="file" multiple>
	<button class="uploadBtn">Upload</button>
	
	<div class="uploadResult">
	
	</div>
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	
	<script type="text/javascript">
		function showUploadedImages(arr) {
			console.log(arr);
			
			var divArea = $(".uploadResult");
			
			for(var i=0; i<arr.length; i++){
				divArea.append("<img src='/board/display?fileName=" + arr[i].imageURL + "'>");
			}
		}
	
		$('.uploadBtn').click(function() {
			
			var formData = new FormData();
			
			var inputFile = $("input[type='file']");
			
			var files = inputFile[0].files;
			
			for(var i = 0; i<files.length; i++){
				console.log(files[i]);
				formData.append("uploadFiles", files[i]);
			}
			
			//실제 업로드 부분
			$.ajax({
		        url: "/board/upload-file"
		        , processData: false
		        , contentType : false
		        , data: formData
		        , type: 'post'
		        , dataType: 'json'
		        , success: function (result) {
		        	console.log(result);
		        }
		        , error : function(jqXHR, textStatus, errorThrown){
		            console.log(textStatus);
		        }
		    });
		});
	</script>

</body>
</html>