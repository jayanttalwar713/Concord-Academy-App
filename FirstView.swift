//
//  FirstView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 10/7/21.
//

import Foundation
import SwiftUI
import PDFKit
import UIKit


struct FirstView: View {
    
    public var date = Date()
    public var calendar = Calendar.current
    @Binding var tabSelection: Int

    
    var body: some View {
        VStack () {
            Image("Concord Academy Seal")
                .resizable()
                .scaledToFit()
                .frame(height:100)
                .offset(y:20)
            Spacer(minLength: 50)
        
            PDFKitRepresentedView(URL(string: build())!)
            Spacer(minLength: 30)
        }.background(Image("Image-1"))
    }
    
    func build() -> String{
//        var components = calendar.dateComponents([.year], from: date)
//        let year = components.year
//        components = calendar.dateComponents([.month], from: date)
//        let month = components.month
//        components = calendar.dateComponents([.day], from: date)
//        let dayOfMonth = components.day
//        let weekday = Calendar.current.component(.weekday, from: Date())
//        let currentDate = Date()
//        var dateComponent = DateComponents()
//        let calendar = Calendar.current
//
//
//        for index in 0...31 {
//            dateComponent.day = (-1)*index
//            let futureDate = calendar.date(byAdding: dateComponent, to: currentDate)
//            var components = calendar.dateComponents([.year], from: futureDate!)
//            let year = components.year ?? 0
//            components = calendar.dateComponents([.month], from: futureDate!)
//            let month = components.month ?? 0
//            components = calendar.dateComponents([.day], from: futureDate!)
//            let day = components.day ?? 0
//            let datestring = String(month) + "-" + String(day) + "-" + String(year-2000)
//            let begin = "https://content-service.sodexomyway.com/media/Web%20Menu%20"
//            let concat = begin + datestring
//            let concat2 = concat + "_tcm397-40219.pdf?url=https://concordacademydining.sodexomyway.com/"
////            let x = print(concat2)
//            let pdf = PDFDocument(url: URL(string: concat2)!)
////            let x = print(UIScreen.main.bounds.size.width)
//
//            if pdf?.string != nil {
//                return concat2
//            }
//        }
//        
        return "https://content-service.sodexomyway.com/media/Web%20Menu%20_tcm397-40219.pdf?url=https://concordacademydining.sodexomyway.com/"
        
    
    }
            






//            let x = print(datestring)
//            let x = print(futureDate!.calendar)
//            let str = "20" + String(month!) + "-"
//            let str2 = str + String(dayOfMonth!)
//            let str3 = str2 + "-"
//            let str4 = str3 + String((year!-2000))
//            let str5 = "https://content-service.sodexomyway.com/media/Web%20Menu%20" + str4
//            let str6 = str5 + "_tcm397-40219.pdf?url=https://concordacademydining.sodexomyway.com/"
//
//            let pdf = PDFDocument(url: URL(string: str6)!)
//            if pdf?.string != nil {
//                return str6
//            }
    
    
        
        
//    let str7 = build_link()
//        if build_link() == "Menu not found. Please check back later!"{
//            VStack {
//            Image("Concord Academy Seal")
//                .resizable()
//                .scaledToFit()
//                .frame(height:150)
//
//            Spacer(minLength: 1)
//            Text("Menu not found. Please check back later!")
//            Spacer(minLength: 1)
//            }.background(Image("Image-1"))
//        }
//
//        else {
//            VStack {
//            Image("Concord Academy Seal")
//                .resizable()
//                .scaledToFit()
//                .frame(height:150)
//
//            Spacer(minLength: 1)
//            PDFKitRepresentedView(URL(string:str7)!)
//
//            }.background(Image("Image-1"))
//        }
//
//    }
//
//
//
//     func build_link() -> String {
//        var components = calendar.dateComponents([.year], from: date)
//        let year = components.year
//        components = calendar.dateComponents([.month], from: date)
//        let month = components.month
//        components = calendar.dateComponents([.day], from: date)
//        let dayOfMonth = components.day
//        let weekday = Calendar.current.component(.weekday, from: Date())
//        if weekday == 7 {
//            let str = "20" + String(month!) + "-"
//            let str2 = str + String(dayOfMonth!)
//            let str3 = str2 + "-"
//            let str4 = str3 + String((year!-2000))
//            let str5 = "https://content-service.sodexomyway.com/media/Web%20Menu%20" + str4
//            let str6 = str5 + "_tcm397-40219.pdf?url=https://concordacademydining.sodexomyway.com/"
//
//            let pdf = PDFDocument(url: URL(string: str6)!)
//            if pdf?.string != nil {
//                return str6
//            }
//
//            else {
//                let pdf = PDFDocument(url: URL(string: build_link_2())!)
//                if pdf?.string != nil {
//                    return build_link_2()
//                }
//
//                else {
//                    return "Menu not found. Please check back later!"
//                }
//            }
//
//        }
//
//        else {
//            let pdf = PDFDocument(url: URL(string: build_link_2())!)
//            if pdf?.string != nil {
//                return build_link_2()
//            }
//
//            else {
//                return "Menu not found. Please check back later!"
//            }
//
//    }
//
//    }
//
//    func build_link_2() -> String {
//        var DaysAgo = Date()
//        let weekday = Calendar.current.component(.weekday, from: Date())
//        if weekday == 1 || weekday == 2 {
//        DaysAgo = Calendar.current.date(byAdding: .day, value: ((-1*weekday)-7), to: Date())!
//        }
//
//        else {
//            DaysAgo = Calendar.current.date(byAdding: .day, value: (-1*weekday), to: Date())!
//        }
//
//        var components = calendar.dateComponents([.year], from: DaysAgo)
//        let year = components.year
//        components = calendar.dateComponents([.month], from: DaysAgo)
//        let month = components.month
//        components = calendar.dateComponents([.day], from: DaysAgo)
//        let dayOfMonth = components.day
//        let str = "20" + String(month!) + "-"
//        let str2 = str + String(dayOfMonth!)
//        let str3 = str2 + "-"
//        let str4 = str3 + String((year!-2000))
//        let str5 = "https://content-service.sodexomyway.com/media/Web%20Menu%20" + str4
//        let str6 = str5 + "_tcm397-40219.pdf?url=https://concordacademydining.sodexomyway.com/"
////        let f = print(str6)
//        return str6
//    }
//
        
//    }




}


