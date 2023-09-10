//
//  WeatherButtonText.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct WeatherButtonText: View {

    let title: String
    let backgroundColor: Color
    let foregroundColor: Color

    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
