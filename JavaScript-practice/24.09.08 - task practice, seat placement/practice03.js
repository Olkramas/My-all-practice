let num = Number(prompt("1부터 입력하신 수까지 3의 배수를 찾겠습니다."));
let num1 = parseInt(num/3);
let add = "";

for(let i=1; i<=num; i++) {
    if(i%3 == 0) {
        add += i;
    }
    if(i%3 == 0 && i != num1*3) {
        add += ",";
    }
}
console.log(add);
console.log(`1부터 ${num}까지의 3의 배수 개수: ${num1}`);