//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct BackgroundView: View {

    let isNight: Bool

    var body: some View {
//        LinearGradient(
//            gradient: Gradient(colors: [
//                isNight ? .black : .blue,
//                isNight ? .gray : Color("lightBlue")
//            ]),
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing
//        )
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea(.all)
    }
}
