//
//  WeatherDayView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct WeatherDayView: View {

    let dayOfWeek: String
    let imageName: String
    let temperature: Int

    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)

            Image(systemName: imageName)
                .renderingMode(.original)
            // iOS 15
////                .renderingMode(.original)
//                .symbolRenderingMode(.multicolor)
//                .foregroundStyle(.pink, .orange, .green)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)

            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
