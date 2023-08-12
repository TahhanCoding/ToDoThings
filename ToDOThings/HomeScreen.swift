//
//  HomeScreen.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 12/08/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            
            // welcome
            HStack {
                VStack {
                    Text("Welcome to Notes")
                        .font(.title3)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Have a dreat day !")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption2)
                        .fontWeight(.regular)
                        .foregroundColor(.gray)
                }
                .padding()
                Spacer()
                Image("profileImage")
                    .padding()
            }
            
            // search bar
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding()
                
                TextField("Search task", text: $searchText)
                    .foregroundColor(.gray)
                    .padding(.trailing, 4)
                Spacer()

                Text("|")
                    .foregroundColor(.gray)
                ZStack {
                    Circle()
                        .foregroundColor(Color(.systemGray6))
                        .frame(width: 30, height: 30)

                    Button(action: {
                        // to this filter


                    }) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(.black)
                    }
                }
                .padding()
            }
            .frame(width: 370, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            .padding()

            .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)


        
            
            
            
        
        

        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
