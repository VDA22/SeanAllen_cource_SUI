//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct BackgroundView: View {

    var topColor: Color
    var bottomColor: Color

    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}
