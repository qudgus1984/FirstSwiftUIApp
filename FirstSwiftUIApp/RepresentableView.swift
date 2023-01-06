//
//  RepresentableView.swift
//  FirstSwiftUIApp
//
//  Created by 이병현 on 2023/01/06.
//

import SwiftUI

struct SampleViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        return SampleViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

struct RepresentableView: View {
    var body: some View {
        SampleViewControllerRepresentable()
    }
}

struct RepresentableView_Previews: PreviewProvider {
    static var previews: some View {
        RepresentableView()
    }
}
