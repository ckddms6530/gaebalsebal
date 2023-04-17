

function register(){
	var category = $('[name=board_category]').val();
	var title = $('[name=board_title]').val();
	var content = $('[name=board_content]').val();
	var tag = $('[name=tag_name]').val();
	
	if(category == ""){
		alert("카테고리를 선택해주세요.");
		return;
	}
	
	if(title == ""){
		alert("제목을 입력해주세요.");
		return;
	}
	
	if(content == ""){
		alert("내용을 입력해주세요.");
		return;
	}
	
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
	
	document.getElementById("registerForm").submit();
}

function modify(){
	document.getElementById("boardForm").submit();
	
}

function edit(){
	var category = $('[name=board_category]').val();
	var title = $('[name=board_title]').val();
	var content = $('[name=board_content]').val();
	var tag = $('[name=tag_name]').val();
	
	if(category == ""){
		alert("카테고리를 선택해주세요.");
		return;
	}
	
	if(title == ""){
		alert("제목을 입력해주세요.");
		return;
	}
	
	if(content == ""){
		alert("내용을 입력해주세요.");
		return;
	}
	
	
	
	document.getElementById("registerForm").submit();
}

function remove(){
	var board_no = $('[name=board_no]').val();
	var board_category = $('[name=board_category]').val();
	
	if (!confirm('게시물을 삭제하시겠습니까?')) {
		    return;
		  }
	
	$.ajax({
        url: "/board/board-remove"
        , data: {board_no : board_no}
        , type: 'post'
        , contentType : 'application/x-www-form-urlencoded; charset=UTF-8'
        , success: function () {
			alert("게시물이 삭제되었습니다.");
			self.location = "/board/board-list?board_category=" + board_category;
			
        }
        , error : function(){
            console.log("에러");
        }
    });
	
}

