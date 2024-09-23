//웹요소 가져오기
let su1 = document.querySelector("#num1");
let su2 = document.querySelector("#num2");
let su3 = document.querySelector("#result");

let addBtn = document.querySelector("#add");
let subBtn = document.querySelector("#sub");
let multBtn = document.querySelector("#multy");
let divBtn = document.querySelector("#divid");

//이벤트 걸기
addBtn.onclick = addFunc;                     //addBtn에 클릭이벤트가 발생하면 함수 실행
//addBtn.addEventListener("click", "addFunc");    //위아래 같은 방법임
subBtn.onclick = subFunc;
multBtn.onclick = multFunc;
divBtn.onclick = divFunc;

//이벤트 핸들러 만들기(함수)
function addFunc() {
    let r = Number(su1.value) + Number(su2.value);
    result.value = "더한값 = " + r;
}
function subFunc() {
    let r = Number(su1.value) - Number(su2.value);
    result.value = "뺀값 = " + r;
}
function multFunc() {
    let r = Number(su1.value) * Number(su2.value);
    result.value = "곱한값 = " + r;
}
function divFunc() {
    let r = su1.value / su2.value;
    result.value = "나눈값 = " + r;
}
