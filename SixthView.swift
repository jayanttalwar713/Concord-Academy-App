//
//  SixthView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 11/7/21.
//

import Foundation
import SwiftUI


struct SixthView: View {
    @Binding var tabSelection: Int
    var body: some View {
        let path1 = Bundle.main.url(forResource: "Centipede1", withExtension: "pdf")

        
//        let url = URL(string: build1())
        VStack() {
//            ScrollView {
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:10)
            
        Spacer(minLength: 20)
            Text("The Centipede").italic().bold().font(.system(size: 40, weight: .light, design: .serif))
//        Image("Centipede")
//            .resizable()
//            .scaledToFit()
//            .frame(height:100)
//            .offset(y:10)
            
        Spacer(minLength: 2)
            
        PDFKitRepresentedView((path1!))
            
//        Image("Centipede1")
//            .resizable()
//            .scaledToFit()
//            .frame(height:450)
//            .frame(width:700)
//            .offset(y:10)
        Spacer(minLength: 20)
        Link("See the Latest Issue!", destination: URL(string: build1())!)
            
        Spacer(minLength: 10)
            

        }.background(Image("Image-1"))
    }
    
    func build1() -> String{
        
        let currentDate = Date()
//        let list = [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        var dateComponent = DateComponents()
        let calendar = Calendar.current
        let futureDate = calendar.date(byAdding: dateComponent, to: currentDate)
        var components = calendar.dateComponents([.year], from: futureDate!)
        let year = components.year ?? 0
        components = calendar.dateComponents([.month], from: futureDate!)
        let month = components.month ?? 0
        
        if month == 8 {
            let input = "https://thecentipede.org/" + String(year) + "/" + String(month-2) + "/"
            return input
        }
        
        else {

        let input = "https://thecentipede.org/" + String(year) + "/" + String(month-1) + "/"
            
        return input
        }
        

        
        
    }
        }
        
        
        
        
//        let path = Bundle.main.url(forResource: "newsoct", withExtension: "pdf")







    

//}
