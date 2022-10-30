//
//  ContentView.swift
//  Concord Academy App
//
//  Created by Jayant Talwar on 9/14/21.
//

import SwiftUI
//import QGrid
//import Foundation


struct ContentView: View {
    @State private var appear = false
    @State private var isHidden = false
    var body: some View {
        if !isHidden {

            VStack {
            Image("cham")
                    .resizable()
                    .scaledToFit()
//                    .offset(x:UIScreen.main.bounds.size.width-400)
                    .background(Image("Image-1").frame(maxWidth: .infinity, maxHeight: .infinity))
                        


            Text("CONCORD ACADEMY")
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
//                    .background(Image("Image-1"))
            Text("1922")
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
//                    .background(Image("Image-1"))
                    
                        
            }
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    appear = true
                    isHidden = true
                }
            

        }
            
        }
        
        if appear {
            TabsView()

        }
        
            }
        }
        



struct TabsView: View {
    @State private var tabSelection = 0
    public var gridItemLayout = [GridItem(.fixed(100)), GridItem(.fixed(100))]
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.black)
    }
    var body: some View {
        TabView(selection: $tabSelection) {
                
                
            ThirdView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "house.fill")
//                                    .resizable()
//                                    .frame(width: 32.0, height: 32.0)
                                Text("Home")
//                            Spacer(minLength: 100)
                            }
                
//                Spacer(minLength: 100)
                
                FirstView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "menubar.rectangle")
                                Text("Menu")
//                            Spacer(minLength: 100)
                            }

                SecondView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "map.fill")
                                Text("Campus Map")
//                            Spacer(minLength: 20)
                            }

                
                TenthView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "figure.walk")
                                Text("Athletic Calendar")
//                            Spacer(minLength: 20)
                            }

                FifthView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "tram.fill")
                                Text("Train Schedule")
//                            Spacer(minLength: 20)
                            }
                
                FourthView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "calendar")
                                Text("Academic Calendar & Events")
//                            Spacer(minLength: 20)
                            }

                EightView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "iphone.radiowaves.left.and.right")
                                Text("CA on Social Media")
//                            Spacer(minLength: 20)
                            }
                
                SixthView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "newspaper.fill")
                                Text("CA's Newspaper")
//                            Spacer(minLength: 20)
                            }
                
                SeventhView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "list.bullet")
                                Text("Club calendar")
//                            Spacer(minLength: 20)
                            }
                
                NinthView(tabSelection: $tabSelection)
                            .tabItem {
                                Image(systemName: "wrench.and.screwdriver")
                                Text("Submit a Maintenance Request")
//                            Spacer(minLength: 20)
                            }


            }
        }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


