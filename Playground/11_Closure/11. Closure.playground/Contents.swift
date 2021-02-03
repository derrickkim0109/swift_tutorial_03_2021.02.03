import UIKit

// Closure 와 함수의 비교
// 함수는 이름이 있는 Closure

// 함수
func sumFunction(a : Int, b : Int) -> Int {
    
    return(a + b)
}

var SumResult: Int = sumFunction(a: 10, b: 20)
print(SumResult)

// Closure
var sumClosure:(Int, Int) -> Int = {(a : Int, b : Int) -> Int in
    return a + b
    
}
SumResult = sumClosure(10, 20)
print(SumResult)

// Guard

func divide0(number : Int){
    if number == 0 {
        print("0 으로 나눌 수 없습니다.")
    }else{
        let result = 100/number
        print(result)
    }
}

divide0(number: 0)
divide0(number: 10)

// 가드 조건은 반대이다
func divide1(number : Int){
    guard number != 0 else {
        print("0으로 나눌 수 없습니다")
        return
    };let result = 100/number
    print(result)
    
}
divide1(number: 0)
divide1(number: 100)

func doubleValue1(input : Int?) -> Int?{
    if let i = input{
        return i * 2
    }
    return nil
}

print(doubleValue1(input: 4)!)

func doubleValue2(input: Int?) -> Int?{
    guard let i = input else {
        return nil
    }
    return i * 2
}

print(doubleValue2(input: 4)!)

// Extension
// 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있다.

// Int에 extension을 적용하여 perperty 추가

extension Int{
    var isEven: Bool{
        return self % 2 == 0 // 2나눠서 0이면 True 해서 날라갈거다
    }
    var isOdd:Bool{
        return self % 2 == 1 // 2나눠서 1이면 True
    }
    
}

1.isEven
var number: Int = 3
number.isEven // 짝수 아니다 !

// 함수를 하나 넣어본 경우
extension Int{
    // variable 을 by 쓰고 내부적으로는 N이라 쓰겠다
    func mutiply(by n: Int) -> Int{
        return self * n
    }
}

print(3.mutiply(by: 2))





