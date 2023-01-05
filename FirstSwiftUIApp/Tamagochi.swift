//
//  Tamagochi.swift
//  FirstSwiftUIApp
//
//  Created by 이병현 on 2023/01/04.
//

import SwiftUI

struct GrowButton: View {
    var text: String
    var icon: Image
    var action: (() -> Void)
    
    var body: some View {
        
        Button(action: action) {
            icon
            Text(text)
        }
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}
/*
struct User {
    var name = "고래밥"
    
    //cow
    // mutating을 하면 cow가 일어나지 않음.
    mutating func changeName() { //copy on write
        name = "사과"
    }
}

struct ComputedProperty: View {
    
    @State var apple = "사과"
    
    var body: some View {
        apple = "바나나"
        Text(apple)
    }
}
*/
// 컴파일 시 실제 값에 반환을 해줌
// 프로퍼티 내부에서는 실제 타입이 어떤지 명확하게 알 수 있음
// 프로퍼티 외부에서는 어떤 타입인지 알 수 없음
// Swift 5.1 some, propertyWrapper


/*
 1. 구조체
 2. 연산 프로퍼티
 => 다시 그려지는 패턴
 */

/*
 V H Z Stack : 전체 데이터를 메모리에 담아두고 스크롤 할 때 보여줄 뿐
 LazyVStack LazyHStack : 화면에 렌더링 될 때 데이터 메모리 담고 그린다
 */

struct ExampleText: View {
    var body: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
}

// Opaque Type (역제네릭) 불투명 타입
struct Tamagochi: View {
    
    @State private var riceCount: Int = 0
    @State private var waterCount: Int = 0 //@State : 다른 뷰와 공유 X
    @State private var showModal = false
    var characterName: some View {
        Text("방실방실 다마고치 \(Int.random(in: 1...100))")
    }
    
    var body: some View { //뷰 렌더링
        VStack(spacing: 10) {
            ZStack {
                characterName
                    .padding(100)
                    .background(.red)
                characterName
                    .padding(50)
                    .background(.yellow)
            }
            ExampleText()
            Text("Lv 1. 밥알 \(riceCount) 물방울 \(waterCount)개")
            GrowButton(text: "밥먹기", icon: Image(systemName: "star.fill")) {
                riceCount += 1
            }
            GrowButton(text: "물먹기", icon: Image(systemName: "star")) {
                waterCount += 1
            }
            GrowButton(text: "통계 보기", icon: Image(systemName: "pencil")) {
                //화면 전환 해라
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                ExampleView()
            }
        }
        .onAppear(perform: {
            print("viewDidAppear")
            print("viewDidLoad에서 하고싶은 일들을 요기 쓰면 이상해짐...")
        })
        .onDisappear {
            print("viewDidDisappear")
        }
    }
    // 프로퍼티 내부에서는 실제 타입이 어떤지 명확하게 알 수 있음.
    // 프로퍼티 외부에서는 어떤 타입인지 알 수 없음
}

struct ComputedProperty:  View {
    
    var apple = "사과"
    
    var body: some View {
        Text(apple)
    }
}

struct Tamagochi_Previews: PreviewProvider {
    static var previews: some View {
        Tamagochi()
//        GrowButton()
    }
}
