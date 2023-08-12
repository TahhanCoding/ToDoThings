//
//  Home.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 13/08/2023.
//

import SwiftUI


struct Home: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
            }
            Text("done notes")
                .tabItem {
                    Image(systemName: "checkmark.square.fill")
            }
            Text("add note")
                .tabItem {
                    VStack {
                        Image(systemName: "plus.square.fill")
                    }
            }
                .frame(width: 70)
            Text("calendar")
                .tabItem {
                    Image(systemName: "calendar")
                        .font(.title)
            }
            Text("notification")
                .tabItem {
                    Image(systemName: "bell.fill")
                        .font(.title)
            }
        }
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}





