//
//  ZeroView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 10/11/21.
//

import Foundation
import SwiftUI

struct Weather: Codable {
    var temp: Double?
//    var description: String
}


struct WeatherMain: Codable {
    let main: Weather
//    let weather: Weather
}

func decodeJSONData(JSONData:Data) {
    do {
        let weatherData = try? JSONDecoder().decode(WeatherMain.self, from:JSONData)
        if let weatherData = weatherData {
            let weather = weatherData.main
//            let weather1 = weatherData.weather
            let new_temp = weather.temp! - 273.15
            let new_temp1 = new_temp * 9/5
            let new_temp2 = new_temp1 + 32
            ThirdView.temp = new_temp2
//            let x = weather1.description
//            let y = print(x)
//            ThirdView.description = weather.description

        }
        else {
            let d = print("else")
        }

    }
}


func pullJSONData(url: URL?, forecast:Bool) {
    let task = URLSession.shared.dataTask(with: url!) {data, response, error in
        if let error = error {
        }
        guard let data = data else {
            return
        }
        
        if (!forecast) {
            decodeJSONData(JSONData: data)
        }
        
    }
    task.resume()
}




struct ThirdView: View {
    
    @Binding var tabSelection: Int
    @State var isHidden = true
    @State var isHidden2 = false
    @State var isHidden3 = false
    @State var showText = false
    static var temp = 0.0
//    static var weather = ""

    let c = pullJSONData(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?id=4933743&appid=3f6a0428c7dc994095912b0802a72e21&units=imperical"), forecast: false)
    
    var body: some View {
        ScrollView {
    VStack {
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:20)
        Spacer(minLength: 40)

        HStack {
            if ThirdView.temp == 0.0 {
                Text("Calculating Weather...")
            }
            else {
                Text("Concord Weather: " + String(format: "%.0f", round(ThirdView.temp)) as CVarArg as! String  + "℉")
            }
            
        Image("weather")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
        }

        Spacer(minLength: 60)
        Text("CA NEWS")
            .font(.system(size: 40, weight: .light, design: .serif))
            .italic()
        Spacer(minLength: 40)
        
        if isHidden {
            Image("Reunion")
                .resizable()
//                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-500)
                .scaledToFit()
                .overlay {
//                    VStack {
                    Text("Reunion Weekend 2022!")
                            .foregroundColor(.white)

//                    Text("")
//
//                    }
//
                }
//            Spacer(minLength: 20)
                
        }
        
        if isHidden2 {
            Image("commencement")
                .resizable()
//                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-500)
                .scaledToFit()
                .overlay(Text("Commencement!")
                    .foregroundColor(.white))
//            Spacer(minLength: 1)
        }
        
        if isHidden3 {
            Image("service")
                .resizable()
//                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-500)
                .scaledToFit()
                .overlay(Text("CA Celebrates its 100th Birthday!"))
                    .foregroundColor(.black)
//                    .offset(y:50)
//            Spacer(minLength: 5)
        }
            
        }.onAppear {
//            pullJSONData(url: url, forecast: false)
            for index in 1...200 {
                
                let second = 5 * index
                let dispatchAfter = DispatchTimeInterval.seconds(second)
                Dispatch.DispatchQueue.main.asyncAfter(deadline: .now() + dispatchAfter) {
                    if index % 3 == 0 {
                        isHidden = true
                        isHidden2 = false
                        isHidden3 = false
                    }
                    
                    else if index % 2 == 0 {
                        isHidden = false
                        isHidden2 = true
                        isHidden3 = false
                    }
                    
                    else {
                        isHidden = false
                        isHidden2 = false
                        isHidden3 = true
                    }
                    
                }
                
            }
        }
    }.background(Image("Image-1").frame(maxWidth: .infinity, maxHeight: .infinity))

        
    }
    
}
