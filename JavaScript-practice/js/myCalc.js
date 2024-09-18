//웹요소에 접근, 수1, 수2, 연산버튼들
let num1 = document.querySelector("#num1");
let num2 = document.querySelector("#num2");
let add = document.querySelector("#add");
let sub = document.querySelector("#sub");
let multy = document.querySelector("#multy");
let divid = document.querySelector("#divid");
let allResult = document.querySelector("#result");

//연산버튼에 온클릭 이벤트 생성하기
add.onclick = addFunc;
sub.onclick = subFunc;
multy.onclick = multyFunc;
divid.onclick = dividFunc;


//이벤트와 연결할 함수 만들기
function addFunc() {
    //인풋상자로 입력받은 값은 숫자가 아니라 문자열임. Number()로 숫자로 바꿈
    let addResult = Number(num1.value) + Number(num2.value);
    allResult.value = addResult;
    /*
    allResult.innerHTML = addResult;
    인풋 상자안에 값을 넣을 때 innerHTML로 넣게되면 실행이 안됨.
    */

}

function subFunc() {
    let subResult = Number(num1.value) - Number(num2.value);
    allResult.value = subResult;
}

function multyFunc() {
    let multyResult = Number(num1.value) * Number(num2.value);
    allResult.value = multyResult;

}

function dividFunc() {
    let divResult = Number(num1.value) / Number(num2.value);
    allResult.value = divResult;


}

