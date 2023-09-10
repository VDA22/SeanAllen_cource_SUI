//
//  MainWetherStatusView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct MainWetherStatusView: View {

    let imageName: String
    let temperature: Int

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)

            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
