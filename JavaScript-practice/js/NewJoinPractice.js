//웹요소에 연결하기
let userId = document.querySelector("#user-id");
let userPw = document.querySelector("#user-pw1");
let pwCheck = document.querySelector("#user-pw2");

//커서가 바뀔때 이벤트발생
userId.onchange = idLengthF;
userPw.onchange = pwLengthF;
pwCheck.onchange = checkPwF;

//연결된 함수 설정
function idLengthF() {
    if(userId.value.length < 3 || userId.value.length > 10) {
        alert("아이디는 3글자 이상 10글자 이하의 값 입니다.");
        userId.value = "";
        userId.focus();
    }
}

function pwLengthF() {
    if(userPw.value.length < 4) {
        alert("비밀번호는 4자리 이상입니다.");
        userPw.value = "";
        userPw.focus();
    }
}

function checkPwF() {
    if(userPw.value != pwCheck.value) {
        alert("비밀번호가 다릅니다. 다시 입력하세요");
        pwCheck.value = "";
        pwCheck.focus();
    }
}