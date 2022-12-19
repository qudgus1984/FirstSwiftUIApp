//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by 이병현 on 2022/12/19.
//

import SwiftUI
// iOS13+, WWDC 19
// iOS13, iOS14, iOS15, iOS16 에 대한 처리가 전부 다름.


/*
 UIKit     : App
 WatchKit  : AppleWatch
 AppKit    : MacBook
 ...
 
 SwiftUI   : 통합해서 개발 가능 -> 화면 단위 개발
 
 UIKit -> UILabel, UIButton, UISwitch
 */

/*
 클래스 기반 -> 구조체 기반
 */

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(Color.red)
            Text("안녕하세요")
            Text("안녕하세요")
            Text("안녕하세요")
            Text("안녕하세요")
            Text("안녕하세요")

        }
        .padding()
        .border(.red)
        .padding()
        .border(.green)
//        .frame(width: 400, height: 700)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
