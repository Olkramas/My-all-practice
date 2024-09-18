//웹요소 접근하기
let bookname = document.querySelector("#book");
let addBtn = document.querySelector("#add");
let bookList = document.querySelector("#bookList");

//#bookList안에 들어갈 배열 선언
let bookArr = [];

//버튼에 이벤트 연결하기
//버튼을 누르면 bookList에 추가 되는 형식
addBtn.onclick = addFunc;

// else if문을 하니 공백을 했을때 처음에는 추가되고, 그후로는 중복이라고 뜸. 
// &&로 if문에 조건을 추가해야될것같음.
// function addFunc1() {
//     if(bookArr.indexOf(book.value) == -1) {
//         bookArr.push(bookname.value);
//         alert("성공적으로 추가했습니다.");
//         bookname.value = "";
//         bookname.focus();
//     } else if(bookArr.indexOf(book.value) != -1) {
//         alert("중복됐습니다 추가불가");
//     } else {
//         alert("값을 입력하세요");
//     }
//     console.log(bookArr);
// }
    
function addFunc() {
    let layout = "";
    //추가하는데 인풋상자에 들어온 값이 중복되면 추가되지 않게하기
    //되는 경우, 안되는 경우 따로따로 나눴음.
    if(bookArr.indexOf(bookname.value) == -1 && bookname.value != "") {
        bookArr.push(bookname.value);
        bookname.value = "";
        bookname.focus();
    } else {
        if (bookArr.indexOf(bookname.value) != -1) {
            alert("이미 추가된 책 입니다.");
            bookname.value = "";
            bookname.focus();
        }
        else {
            alert("책 제목을 입력하세요");
            bookname.focus();
        }
    }
    //동적으로 추가한 <ul></ul> <li></li>리스트 안에 해당내용을 추가해주기.
    //도서 목록을 보여주기 위한 함수를 만들어야 함.
    show();
}

function show() {
    layout = "<ul>";
    for(let ele in bookArr) {
        layout += `<li> ${bookArr[ele]} <span class="del" id="${ele}">삭제</span></li>`;
    }
    layout += "</ul>";

    bookList.innerHTML = layout;

    //querySelectorAll로 모든 li에 접근,
    let delList = document.querySelectorAll(".del");
    for(let ele of delList) {
        //리스트에 각 요소(삭제)를 클릭하면 remove함수 실행.
        ele.onclick = remove;
    }
}

function remove() {
    /*리스트의 각각의 id는 배열의 번호와 같음. 그래서 getAttribute를 통해 
    delList의 id에 접근, id의 이름을 가져와서 num에 저장.
    */
    let num = this.getAttribute("id");
    //그래서 splice를 통해 '삭제'가 클릭되는 해당 노드리스트의 아이디 번호(인덱스 번호) 부터 1개(자기자신)이 삭제되는것
    bookArr.splice(num, 1);
    show();
}




