//
//  CityTextView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct CityTextView: View {

    let cityName: String

    var body: some View {
        Text("Cupertino, CA")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
