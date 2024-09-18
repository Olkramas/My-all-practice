//input 상자 접근
let uId = document.querySelector("#user-id");
let pw = document.querySelector("#user-pw1");
let pwc = document.querySelector("#user-pw2");

//입력상자에 값이 바뀌는 이벤트 발생하면 이벤트 핸들러 연결
uId.onchange = idCheck;
pw.onchange = pwCheck;
pwc.onchange = pwCompare;

// id 길이 체크(3~10)
function idCheck(){
    let idl = uId.value.length;
    if(idl < 3 || idl > 10) {
        alert("아이디의 길이는 3~10글자입니다.");
        uId.select();
    }
}
//비밀번호 길이 체크(4이상)
function pwCheck() {
    let pwl = pw.value.length;
    if(pwl < 4) {
        alert("비밀번호는 4글자 이상입니다.");
        pw.value = "";
        pw.focus();     //깜빡거리게하기
    }
}
// 비밀번호가 맞는지 확인
function pwCompare() {
    if(pw.value != pwc.value) {
        alert("비밀번호가 일치하지 앖습니다.");
        pwc.value = "";       //값 초기화
        pwc.focus();
    }
}
