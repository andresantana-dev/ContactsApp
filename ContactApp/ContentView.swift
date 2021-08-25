//
//  ContentView.swift
//  ContactApp
//
//  Created by André Santana on 25/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                Text("All")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
                    .background(Color.green)
                    .clipShape(Capsule())
                
                Text("Missed")
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 50)
                    .background(Color.white)
                    .overlay(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
            .padding(.horizontal, 50)
            
            Text("Recents")
                .font(.title)
                .bold()
                .padding()
            
            HStack() {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                
                Text("Search")
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)
            .frame(width: 330, height: 45)
            .offset(x: -90)
            .overlay(
                Capsule()
                    .stroke(Color.gray, lineWidth: 1)
            )
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 15) {
                    DetailView(name: "Santana", image: "logo", isMissedCall: false)
                    DetailView(name: "Toby", image: "1", isMissedCall: false)
                    DetailView(name: "Dwight", image: "2", isMissedCall: true)
                    DetailView(name: "Stanley", image: "3", isMissedCall: false)
                    DetailView(name: "Pam", image: "4", isMissedCall: true)
                    DetailView(name: "Michael", image: "5", isMissedCall: false)
                    DetailView(name: "Angela", image: "6", isMissedCall: false)
                    DetailView(name: "Kanye", image: "7", isMissedCall: true)
                    DetailView(name: "Jim", image: "8", isMissedCall: false)
                }
            })
            .frame(width: 310)
            .padding()
            
        }
        .edgesIgnoringSafeArea(.all)
        .offset(y: 10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetailView: View {
    
    var name: String
    var image: String
    var isMissedCall: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(name)
                        .bold()
                    
                    Text("Mobile")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                VStack {
                    Image(systemName: "phone.arrow.up.right")
                        .resizable()
                        .foregroundColor(isMissedCall ? .red : .gray)
                        .frame(width: 20, height: 20)
                        .offset(x: 15)
                    
                    Text("25/09/2021")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
