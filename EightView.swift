//
//  EightView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 11/24/21.
//

import Foundation
import SwiftUI



struct EightView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack () {
//            VStack {
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
//            .offset(y:30)
            
//        Spacer(minLength: 15)
        Spacer(minLength: 100)
//        Button(
        Image("insta")
            .resizable()
            .scaledToFit()
            .frame(height: 75)
        Link(
            ("Instagram"),
            destination: URL(string: "https://www.instagram.com/concord_academy/")!)

        Spacer(minLength: 50)
        Image("facebook")
            .resizable()
            .scaledToFit()
            .frame(height: 75)

        Link("Facebook",
            destination: URL(string: "https://www.facebook.com/concord.academy")!)
        Spacer(minLength: 30)
        }.background(Image("Image-1"))
        
    }
}

