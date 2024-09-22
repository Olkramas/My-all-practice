//웹요소 접근
let book = document.querySelector("#book");
let btn = document.querySelector("#add");
let list = document.querySelector("#bookList");

//온클릭 이벤트 만들기
btn.onclick = btnFunc;

//책 리스트를 추가할 배열 생성
let bookList = [];
layout = '';

//이벤트 핸들러
function btnFunc() {
    //책이 등록되는 경우와 안되는 경우 두개로 나눴음     
    if(bookList.indexOf(book.value) == -1 && book.value != "") {
        bookList.push(book.value);
        book.value = "";
        focus();
    } else {
        //책이 중복돼서 안되는 경우
        if(bookList.indexOf(book.value) != -1) {
            alert("중복된 책 제목입니다.");
            book.value = "";
            focus();
        //아무것도 입력하지 않았을 때
        } else {
            alert("책제목을 입력하세요");
            focus();
        }
    }

    show();
}

function show() {
    layout += "<ul>";
    for(let index in bookList) {
        layout += `<li> ${bookList[index]} 
                        <span class="del" id="${index}">삭제</span></li>`;
    }
    layout += "</ul>";
    list.innerHTML = layout;
    //공백으로 재할당 안해주면 계속 중복돼서 출력됨.
    layout = '';

    let dlist = document.querySelectorAll(".del");
    for(let ele of dlist) {
        ele.onclick = remove;
    }
}

function remove() {
    //id값만 변수로 가져와서 배열을 splice에 넣어서 삭제하기    
    let del = this.getAttribute("id");
    bookList.splice(del, 1);
    show();
    
}