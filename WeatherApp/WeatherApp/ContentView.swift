//
//  ContentView.swift
//  WeatherApp
//
//  Created by Darya Viter on 10.09.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var isNight = false

    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)

            VStack {
                CityTextView(cityName: "Cupertino, CA")

                MainWetherStatusView(
                    imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: 76
                )

                makeWeekStack()

                Spacer()

                Button {
                    withAnimation {
                        isNight.toggle()
                    }
                } label: {
//                    WeatherButtonText(title: "Change Day Time", backgroundColor: .mint, foregroundColor: .blue)
                    WeatherButtonText(
                        title: "Change Day Time",
                        backgroundColor: .white,
                        foregroundColor: .blue
                    )
                }

                Spacer()
            }
        }
    }

    private func makeWeekStack() -> some View {
        HStack(spacing: 20) {
            WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
            WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
            WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 55)
            WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 60)
            WeatherDayView(dayOfWeek: "SAT", imageName: "snowflake", temperature: 74)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
