//
//  LodingView.swift
//  Appetizers
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 30/06/2025.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimaryColor
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {  }
}

    struct LoadingView: View {
        var body: some View {
            ZStack{
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                ActivityIndicator()
            }
        }
    }
    
    
