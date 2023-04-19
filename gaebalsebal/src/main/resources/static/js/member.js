/**
 * 
 */

function checkId() {
  var memberId = $('#member_id').val();
  console.log(memberId);

  if (memberId == '') {
    showModal('아이디를 입력해주세요.');
    return;
  } else if (memberId.length < 4 || memberId.length > 16) {
    showModal('아이디는 4글자 이상 16글자 이하만 가능합니다.');
    return;
  } else {
    $.ajax({
      type: 'POST',
      url: '/member/idCheck',
      contentType: 'application/json',
      data: JSON.stringify({member_id: memberId}),
      success: function(response) {
        if (response === 0) {
          showModal('사용 가능한 아이디입니다.');
          $('#idCheckBtn').val('Y');
          $('#idCheckBtn').data('member_id', memberId);
        } else if (response === 1) {
          showModal('이미 사용 중인 아이디입니다.');
        }
      }
    });
  }
}

function checkPassword() {
  var password = $('#member_pw').val();
  var passwordConfirm = $('#member_pw_confirm').val();
  var passwordMatchLabel = document.getElementById('password-match-label');

  // 영대문자, 영소문자, 숫자, 특수문자 중 2종류 이상으로 구성하여 최소 6자 이상으로 입력
  var regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{6,}$/;

  if (password === passwordConfirm) {
    if (regex.test(password)) {
      passwordMatchLabel.style.color = 'green';
      passwordMatchLabel.textContent = '비밀번호가 일치하며, 조건에 부합합니다.';
    } else {
      passwordMatchLabel.style.color = 'red';
      passwordMatchLabel.textContent = '6자이상 영문 대 소문자, 숫자, 특수문자 중 2가지 이상 조합하여 사용하세요..';
    }
  } else {
    passwordMatchLabel.style.color = 'red';
    passwordMatchLabel.textContent = '비밀번호가 일치하지 않습니다.';
  }
}


function showModal(message) {
  var modal = document.getElementById('myModal');
  var modalMessage = document.getElementById('modal-message');

  modalMessage.innerHTML = message;
  modal.style.display = 'block';

  var closeBtn = document.getElementsByClassName('close')[0];
  closeBtn.onclick = function() {
    modal.style.display = 'none';
  }

  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = 'none';
    }
  }
}
	
