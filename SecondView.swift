//
//  SecondView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 10/7/21.
//

import Foundation
import SwiftUI
import PDFKit
import UIKit

struct SecondView: View {
    @State private var finalScale: CGFloat = 1
    @Binding var tabSelection: Int

    
    var body: some View {
        VStack (){
        let path = Bundle.main.url(forResource: "Map", withExtension: "pdf")
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:20)
            
        Spacer(minLength: 30)
        PDFKitRepresentedView((path!))
        Spacer(minLength: 20)
            
        Link("Interactive tour of CA", destination: URL(string: "https://tour.concordacademy.org/")!)
        Spacer(minLength: 20)
        }.background(Image("Image-1"))
    }
        
    
    
}

