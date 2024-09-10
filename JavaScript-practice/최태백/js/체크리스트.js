let item = document.querySelector("#item");
let addBtn = document.querySelector("#add");
let itemList = document.querySelector("#itemList");

//배열생성
let items = [];

//추가 버튼에 클릭 이벤트 연결
addBtn.onclick = addFunc;

// 배열에 아이템 목록 추가
function addFunc() {
    if(item.value == "") {
        alert("추가할 준비물을 입력해주세요");
    } else {
        if(items.indexOf(item.value) != -1) {
            alert("이미 입력했습니다.");
            item.value = "";
            item.focus();
        } else {
            items.push(item.value);
            item.value = "";
            item.focus();
            show();
        }
    }
}

//리스트 ul li태그로 출력
function show() {
    let list = "<ul>";
    for(let idx in items) {
        list += `<li> ${items[idx]} <span class="close" id=${idx}>X</span> </li>`;
    }
    list += "</ul>"
    itemList.innerHTML =list;

    let dItem = document.querySelectorAll(".close");
    for(let ele of dItem) {
        ele.onclick = remove;
    }
}

function remove() {
    let dno = this.getAttribute('id');
    items.splice(dno, 1);
    show();
}