//
//  ContentView.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 11/08/2023.
//

import SwiftUI

struct SplashScreen: View {
    
    let images = ["welcome1", "welcome2", "welcome3"]
    @State private var selectedImageIndex = 0

    var body: some View {
        
        VStack {
            // Banner Gallery
            VStack {
                TabView(selection: $selectedImageIndex){
                    ForEach(0..<3) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                HStack() {
                    ForEach(0..<3) { index in
                        Rectangle()
                            .frame(width: 20, height: 9)
                            .cornerRadius(10)
                            .foregroundColor(selectedImageIndex == index ? Color(hex: "FFB711") : Color(hex: "FBE08A"))
                    }
                }
            }
            .padding()
            
            Text("Manage Your Daily TODO")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Efficiently Organize and Conquer Your Daily Tasks, Easy handling, let's go!")
                .font(.caption2)
                .fontWeight(.regular)
                .foregroundColor(.gray)
                .padding(10)
                .multilineTextAlignment(.center)
            
            // Button Create A Note
            ZStack {
                Rectangle()
                    .foregroundColor(Color(hex: "FFB711"))
                    .frame(width: 270, height: 60)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.7), radius: 4, x: 0, y: 2)
                
                Button(action: {
                    // Create A Note
                    
                    
                    
                }) {
                    Text("Create A Note")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            
            // Button Import Notes
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 270, height: 60)
                
                Button(action: {
                    // import notes
                    
                    
                }) {
                    Text("Import Notes")
                        .font(.headline)
                        .foregroundColor(Color(hex: "FFB711"))
                }
            }
            
            
            
        }
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
