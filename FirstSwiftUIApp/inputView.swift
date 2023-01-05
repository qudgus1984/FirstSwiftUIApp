//
//  inputView.swift
//  FirstSwiftUIApp
//
//  Created by 이병현 on 2023/01/05.
//

import SwiftUI

struct UserTextView: View {
    
    @Binding var text: String
    
    var body: some View {
        Text(text)
    }
}

struct inputView: View {
    @State private var nickname = ""
    var body: some View {
        VStack {
            TextField("닉네임을 입력해주세요", text: $nickname)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            UserTextView(text: $nickname)
        }
    }
}

struct inputView_Previews: PreviewProvider {
    static var previews: some View {
        inputView()
    }
}
