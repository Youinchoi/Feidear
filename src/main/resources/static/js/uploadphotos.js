
/*
한솔 생성 파일 (업로드 파일 개수 제한 js) / 파일 개수 제한 & 초과 시 업로드 X
 */
// 줄 바꿀 때마다 div 생성 > 하나에 저장하기 위한 함수! 
$(function(){
	$('#rv_content2').change(function(){
		let content = $(this).html();
		$('input[name="rv_content"]').val(content);
	})//end of change
})//end of function


var fileNo = 0;
var filesArr = new Array();

/* 첨부파일 추가 */
function addFile(obj){
    var maxFileCnt = 3;   												// 첨부파일 최대 개수
    var attFileCnt = document.querySelectorAll('.filebox').length;   	// 기존 추가된 첨부파일 개수
    var remainFileCnt = maxFileCnt - attFileCnt;   						// 추가로 첨부가능한 개수 (최대 업로드 가능 파일 개수 - 현재 업로드 파일 개수) => 추가할 수 있는 파일 개수
    var curFileCnt = obj.files.length;  								// 현재 선택된 첨부파일 개수

    // 첨부파일 개수 확인
    if (curFileCnt > remainFileCnt) {									// 현재 선택된 파일 개수가 추가할 수 있는 개수보다 많은 경우(업로드 가능 개수 초과할 경우)
        alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    } // end of if()

    for (var i = 0; i < Math.min(curFileCnt, remainFileCnt); i++) {

        const file = obj.files[i];

        // 첨부파일 검증
        if (validation(file)) {
            // 파일 배열에 담기
            var reader = new FileReader();
            reader.onload = function () {
                filesArr.push(file);
            };
            reader.readAsDataURL(file)

            // 목록 추가
            let htmlData = '';
            htmlData += '<div id="file' + fileNo + '" class="filebox">';
            htmlData += '   <p class="name">' + file.name + '</p>';
            htmlData += '   <a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
            htmlData += '</div>';
            $('.file-list').append(htmlData);
            fileNo++;
        } else {
            continue;
        } // end of else
    } // end of for ()
    // 초기화
    document.querySelector("input[type=file]").value = "";
} // end of addFile()

/* 첨부파일 검증 */
function validation(obj){
    const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    if (obj.name.length > 100) {
        alert("파일명이 100자 이상인 파일은 제외되었습니다.");
        return false;
    } else if (obj.size > (100 * 1024 * 1024)) {
        alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
        return false;
    } else if (obj.name.lastIndexOf('.') == -1) {
        alert("확장자가 없는 파일은 제외되었습니다.");
        return false;
    } else if (!fileTypes.includes(obj.type)) {
        alert("첨부가 불가능한 파일은 제외되었습니다.");
        return false;
    } else {
        return true;
    }
} // end of validation()

/* 첨부파일 삭제 */
function deleteFile(num) {
    document.querySelector("#file" + num).remove();
    filesArr[num].is_delete = true;
} // end of deleteFile()

/* 폼 전송 */
function submitForm() {
    // 폼데이터 담기
    var form = document.querySelector("form");
    var formData = new FormData(form);
    for (var i = 0; i < filesArr.length; i++) {
        // 삭제되지 않은 파일만 폼데이터에 담기
        if (!filesArr[i].is_delete) {
            formData.append("attach_file", filesArr[i]);
        } // end of if
    } // end of for

    $.ajax({
        method: 'POST',
        url: '/register',
        dataType: 'json',
        data: formData,
        async: true,
        timeout: 30000,
        cache: false,
        headers: {'cache-control': 'no-cache', 'pragma': 'no-cache'},
        success: function () {
            alert("파일업로드 성공");
        },
        error: function (xhr, desc, err) {
            alert('에러가 발생 하였습니다.');
            return;
        } // end of error
    }) // end of ajax
} // end of submitForm()