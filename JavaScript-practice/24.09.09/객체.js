let person = {
    name : "hong",
    age : 25,
    arr : [1, 2, 3, 4],
    eat : function(){
        console.log(`내 이름은 ${this.name}, 나이는 ${this.age}입니다.`)
    }
}
console.log(person.name);
console.log(person.arr[0]);
person.eat();
person.job = "programmer";
person.print = function() {

//for ~ in 객체의 모든 객체를 다 돌아서 key를 가져옴.
//key를 이용해서 값도 가져올 수 있음.
for(let key in person) {
    console.log(key + " : " + person[key]);
}
console.log(`내 직업은 ${this.job}}입니다.`);
}
//객체에 속성과 메소드를 추가하고 싶을 때   
person.print();

//삭제하는 방법
delete person.arr;

//생성자 함수 만들기 => 객체를 생성하기 위해서
function Product(pname, weight, price) { //판매기준
    this.pname = pname;
    this.weight = weight;
    this.price = price;
}

Product.prototype.calc = function (w) {         //프로토타입은 공동영역임.
    return w / this.weight * this.price;
}

//객체 생성
let sam = new Product("삼겹살", 100, 5000);
console.log(sam.pname);
console.log(sam.calc(500));

let beaf = new Product("소고기", 50, 10000);
console.log(beaf.pname);
console.log(beaf.calc(100));
