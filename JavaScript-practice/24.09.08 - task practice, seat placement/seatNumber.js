let person = Number(prompt("인원 수를 입력하세요"));
let cols = Number(prompt("한줄에 몇명씩 배치할까요?"));
let rows = Math.ceil(person/cols);
let seatNum = 0;
let layout = "";

layout += "<table>";
for(let i=1; i<=rows; i++) {
    layout += "<tr>";
    for(let j=1; j<=cols; j++) {
        seatNum++;
        if(seatNum <= person) {
            layout += "<td>" + "좌석" + seatNum + "</td>";
        }
    }
    layout += "</tr>";
}
layout += "</table>";

document.write(layout);
