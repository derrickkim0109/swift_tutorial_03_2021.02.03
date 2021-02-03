import UIKit
// 열거형
// 관련된 값으로 이루어진 그룹을 공통의 형 (type) 으로 선언해서 사용

enum Weekday{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
    }


var day : Weekday = Weekday.mon
day
day = .tue
day


switch day {

case .mon, .tue, .wed, .thu:
    print("평일입니다.")
case Weekday.fri:
    print("불금파티!")
case .sat, .sun:
    print("신나는 주말!")
    
}

// ---------

enum Month{
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage(){
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄")
        case .jun, .jul, .aug:
            print("여름은 더워!")
        case .dec, .jan, .feb:
            print("가을은 독서의 계절")
        case .sep, .oct, .nov:
            print("추운 겨울 입니다.")

}
        
}
}
Month.mar.printMessage()
