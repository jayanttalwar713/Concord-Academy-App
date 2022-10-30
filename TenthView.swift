//
//  TenthView.swift
//  Concord Academy App
//
//  Created by Jayant  Talwar on 12/4/21.
//

import Foundation
import SwiftUI

struct TenthView: View {
    @Binding var tabSelection: Int
    var body: some View {
        ScrollView {
        VStack () {
            Group {
        Image("Concord Academy Seal")
            .resizable()
            .scaledToFit()
            .frame(height:100)
            .offset(y:10)
        Spacer(minLength: 50)
        }
        
//        VStack () {
        Group {
        Text("Fall Sports")
            .bold()
            .font(.system(size: 30.0))
        Spacer(minLength:5)
        HStack(){
            Link("Boys Varsity Cross Country", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-cross-country/")!)}
        HStack(){
            Link("Girls Varsity Cross Country", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-cross-country/")!)}
        HStack(){
            Link("Girls Varsity Field Hockey", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-field-hockey/")!)}
        Spacer(minLength: 2)
            
            
        HStack(){
            Link("Boys Varsity Soccer", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-soccer/")!)}
        HStack() {
            Link("Girls Varsity Soccer", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-soccer/")!)}
        HStack() {
            Link("Boys JV Soccer", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-jv-soccer/")!)}
        Spacer(minLength: 2)
        }
        
        Group {
        HStack(){
            Link("Girls JV Soccer", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-jv-soccer/")!)}
        HStack() {
            Link("Boys Thirds Soccer", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-thirds-soccer/")!)}
        HStack() {
            Link("Girls Varsity Volleyball", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-volleyball/")!)}
        HStack() {
            Link("Girls JV Volleyball", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-jv-volleyball/")!)
        }
        Spacer(minLength: 50)
            
//        }
//
//
//        VStack() {
            Group {
        Text("Winter Sports")
            .bold()
            .font(.system(size: 30.0))
        Spacer(minLength:5)
        HStack(){
            Link("Boys Varsity Alpine Skiing", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-alpine-skiing/")!)}
        HStack(){
            Link("Girls Varsity Alpine Skiing", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-alpine-skiing/")!)}
        HStack {
            Link("Coed Varsity Wrestling", destination: URL(string: "https://concordacademy.org/athletics/teams/coed-varsity-wrestling/")!)}
        Spacer(minLength: 2)
        HStack(){
            Link("Boys Varsity Basketball", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-basketball/")!)}
        HStack(){
            Link("Girls Varsity Basketball", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-basketball/")!)}
        HStack(){
            Link("Boys JV Basketball", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-jv-basketball/")!)}
        Spacer(minLength: 2)
            }
            Group {
        HStack(){
            Link("Girls JV Basketball", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-jv-basketball/")!)}
        HStack(){
            Link("Boys Varsity Squash", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-squash/")!)}
        HStack(){
            Link("Girls Varsity Squash", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-squash/")!)}
        Spacer(minLength: 50)
        }

//
//
////        VStack() {
            Group {
        Text("Spring Sports")
            .bold()
            .font(.system(size: 30.0))
        Spacer(minLength:5)
        HStack(){
            Link("Boys Varsity Baseball", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-baseball/")!)}
        HStack() {
            Link("Boys Varsity Lacrosse", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-lacrosse/")!)}
        HStack() {
            Link("Girls Varsity Lacrosse", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-lacrosse/")!)}
        Spacer(minLength: 2)
        HStack(){
            Link("All Gender Varsity Sailing", destination: URL(string: "https://concordacademy.org/athletics/teams/all-gender-varsity-sailing/")!)}
        HStack() {
            Link("Girls Varsity Softball", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-softball/")!)}
        HStack() {
            Link("Boys Varsity Tennis", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-tennis/")!)}
        Spacer(minLength: 2)
            }
                Group {
        HStack(){
            Link("Girls Varsity Tennis", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-tennis/")!)}
        HStack() {
            Link("Boys JV Tennis", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-jv-tennis/")!)}
        HStack() {
            Link("Girls Varsity Track & Field", destination: URL(string: "https://concordacademy.org/athletics/teams/girls-varsity-track-&-field/")!)}
        HStack() {
            Link("Boys Varsity Track & Field", destination: URL(string: "https://concordacademy.org/athletics/teams/boys-varsity-track-&-field/")!)}
        HStack() {
            Link("All Gender Varsity Ultimate Frisbee", destination: URL(string: "https://concordacademy.org/athletics/teams/all-gender-varsity-ultimate-frisbee/")!)}
        }
        Spacer(minLength: 2)
    }
        
    }
    

}
}
}

