//
//  ExampleView.swift
//  FirstSwiftUIApp
//
//  Created by 이병현 on 2022/12/19.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(.brown)
                .fontWeight(.heavy)
            Spacer()
            Text("안녕하세요. Hello, Jack")
                .font(.caption)
                .foregroundColor(.cyan)
                .italic()
                .fontWeight(.heavy)
            Spacer()
            Circle()
                .fill(.yellow)
            Ellipse()
                .fill(.green)
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(.red)
            Rectangle()
                .fill(.blue)
            Spacer()
            Text("이게 가능하다고오?!?!?!!\n두번째줄\n세번째줄")
                .underline()
                .strikethrough()
                .lineLimit(2)
                .kerning(10)
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewDevice("iPhone 11")
    }
}
