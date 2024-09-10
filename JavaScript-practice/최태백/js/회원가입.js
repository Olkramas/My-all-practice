let uId = document.querySelector("#user-id");
let pw = document.querySelector("#user-pw1");
let pwc = document.querySelector("#user-pw2");

uId.onchange = idCheck
pw.onchange = pwCheck;
pwc.onchange = pwCompare;

function idCheck() {
    let idl = uId.value.length;
    if(idl < 4 || idl > 16) {
        alert("아이디의 길이는 4~15글자입니다.");
        uId.select();
    }
}

function pwCheck() {
    let pwl = pw.value.length;
    if(pwl < 8) {
        alert("비밀번호는 8글자 이상입니다.");
        pw.value="";
        pw.focus();
    }
}

function pwCompare() {
    if(pw.value != pwc.value) {
        alert("비밀번호가 일치하지 않습니다.");
        pwc.value = "";
        pwc.focus();
    }
}