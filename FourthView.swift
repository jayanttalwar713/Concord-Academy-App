//
//  FourthView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 10/30/21.
//

import Foundation
import SwiftUI


struct FourthView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack (){
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:20)
            
        Spacer(minLength: 50)
            PDFKitRepresentedView(URL(string: "https://concordacademy.org/wp-content/uploads/2022/02/Academic-Year-Calendar-2022-23.pdf")!)
        Spacer(minLength: 25)
            Link("See Events at CA", destination: URL(string: "https://concordacademy.org/calendar/")!)
        Spacer(minLength: 10)

        }.background(Image("Image-1"))
//                .offset(y:50)
    }
}


    
