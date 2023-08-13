//
//  Home.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 13/08/2023.
//

import SwiftUI


struct Home: View {
    
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                HomeScreen()
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            .tag(0)
            Text("done notes")
                .tabItem {
                    Image(systemName: "checkmark.square.fill")
                }
                .tag(1)
            NavigationView {
                AddNote()
            }
            .tabItem {
                Image(systemName: "plus.square.fill")
                
            }
            .tag(2)
            
            Text("calendar")
                .tabItem {
                    Image(systemName: "calendar")
                        .font(.title)
                }
                .tag(3)
            
            Text("notification")
                .tabItem {
                    Image(systemName: "bell.fill")
                        .font(.title)
                }
                .tag(4)
            
        }
        .accentColor(Color(hex: "F1A800"))
        .navigationBarBackButtonHidden(true)
        .onAppear {
            selectedTab = 2
        }
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}






