// 입력상자와 버튼에 접근
let book = document.querySelector("#book");
let addBtn = document.querySelector("#add");
let blist = document.querySelector("#bookList");

// 도서 목록 저장 배열 생성
let books = [];


// 추가 버튼에 클릭 이벤트 연결
addBtn.onclick = addFunc;

// 배열에 도서 목록 추가
    function addFunc()  {
    if(book.value == "") {
        alert("책 제목을 입력하세요");
    } else {
        if(books.indexOf(book.value) != -1) {
            alert("이미 존재하는 책입니다.");
            book.value = "";
            book.focus();
        }else{
            books.push(book.value);
            book.value = "";
            book.focus();
            show();             //도서 목록 출력을 위한 펑션을 만들어야됨.
        }
    }
}

// 문서에 도서목록 출력(<ul><li>)
function show() {
    let list = "<ul>";      //책 제목을 배열에서 가져와서 <ul><li>를 만듬
    for(let idx in books) {
        list += `<li>${books[idx]} 
                <span class="del" id=${idx}>삭제</span> </li>`; //삭제를 누르면 배열 방번호가 id가 됨.
    }
    list += "</ul>";
    blist.innerHTML = list;
    
    //삭제될 목록 가져오기
    let dlist = document.querySelectorAll(".del");
    for(let ele of dlist) {
        ele.onclick = remove;   //클릭됐을 때 삭제 그래서 ()가 없음.
    }
}

// 문서에 도서 목록 삭제
function remove() {
    let dno = this.getAttribute('id');
    books.splice(dno, 1);
    show();
}
