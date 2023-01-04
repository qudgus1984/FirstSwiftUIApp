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

// Opaque Type (역제네릭) 불투명 타입
struct Tamagochi: View {
    
    @State var riceCount: Int = 0
    @State var waterCount: Int = 0
    
    var body: some View {
        VStack(spacing: 10) {
            Text("방실방실 다마고치")
            Text("Lv 1. 밥알 \(riceCount) 물방울 \(waterCount)개")
            GrowButton(text: "밥먹기", icon: Image(systemName: "star.fill")) {
                riceCount += 1
            }
            GrowButton(text: "물먹기", icon: Image(systemName: "star")) {
                waterCount += 1
            }
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
