//
//  NinthView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 11/28/21.
//

import Foundation
import SwiftUI

struct NinthView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack() {
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:20)
        Spacer(minLength: 50)
            
        Image("maintenance")
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
        Spacer(minLength: 10)
            
        Link("Submit a Maintenance Request", destination: URL(string: "https://login.myschoolbuilding.com/msb?acctNum=466279447")!)
            
        Spacer(minLength: 10)
            
        }.background(Image("Image-1"))
    }
}
