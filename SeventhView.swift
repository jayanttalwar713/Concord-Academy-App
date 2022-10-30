//
//  SeventhView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 11/28/21.
//

import Foundation
import SwiftUI

struct SeventhView: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack () {
            
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:20)
        Spacer(minLength: 50)
        Image("clubs")
            .resizable()
            .scaledToFit()
//            .frame(width: 800, height: 1000)

        Spacer(minLength: 10)
        Link("Virtual Club Calendar", destination: URL(string: "https://docs.google.com/spreadsheets/d/1qlVfXDu9MSCKYIIfTeZX3GAVsTxnXlXI2o82EMTGNEE/edit?usp=sharing")!)
            
        Spacer(minLength: 10)
            
        }.background(Image("Image-1"))
    }
}
