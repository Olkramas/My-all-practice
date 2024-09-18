//웹요소에 접근하기.
let bookName = document.querySelector("#book");
let addBtn = document.querySelector("#add");
let listResult = document.querySelector("#bookList");

//값을 저장할 배열 생성
let bookList = [];

//클릭 이벤트 만들기
addBtn.onclick = addFunc;

function addFunc() {
    //배열에 저장 or not으로 크게 나누기
    if(bookList.indexOf(bookName.value) == -1 && bookName.value != "") {
        bookList.push(bookName.value);
        bookName.value = "";
        bookName.focus();
    } else {
        if(bookList.indexOf(bookName.value) != -1) {
            alert("이미 입력된 책입니다.");
            bookName.value = "";
            bookName.focus();
        } else {
            alert("책 제목을 입력하세요.");
            bookName.value = "";
            bookName.focus();
        }
    }
    show();
}

function show() {
    let layout = "<ul>";
    for(let index in bookList) {
        layout += `<li>${bookList[index]}
                  <span class="del" id="${index}">삭제</span></li>`
    }
    layout += "</ul>";    

    listResult.innerHTML = layout;

    let del = document.querySelectorAll(".del");
    for(let ele of del) {
        ele.onclick = remove;
    }

}

function remove() {
    let dNum = this.getAttribute('id')
    bookList.splice(dNum, 1);
    show();
}
