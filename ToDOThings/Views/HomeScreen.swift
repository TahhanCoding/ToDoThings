//
//  HomeScreen.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 12/08/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var searchText: String = ""
    @AppStorage("filter") private var filter: String = "Today's Task"
    private let filters = ["Today's Task", "Monthly Task", "Yearly Task"]

    var body: some View {
        VStack {
            
            //MARK: - welcome
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
            
            //MARK: - search bar
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
                        // do this filter


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

            HStack {
                Text("My Priority Task")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                Button(action: {
                    // do this filter


                }) {
                    Text("All Tasks >")
                        .foregroundColor(.black)
                        .font(.footnote)
                }
                .padding()

            }
        
            // MARK: - Notes Cards
            ScrollView(.horizontal) {
                LazyHStack(spacing: 16) {
                    ForEach(0..<5) { index in
                        // NOTE: This coloring approach is just to show UI
                        if index == 0 {
                            CardView(cardColor: Color(hex: "F1A800"))
                        }
                        if index%2 == 0 {
                            CardView(cardColor: Color(hex: "5486E9"))
                        } else {
                            CardView(cardColor: Color(hex: "FFB185"))
                        }
                    }
                }
                .padding()
            }
            
            HStack {
                Text("My Tasks")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                Button(action: {
                    // do this filter


                }) {
                    Text("See All >")
                        .foregroundColor(.black)
                        .font(.footnote)
                }
                .padding()
            }

            HStack(spacing: 55) {
                ForEach(filters, id:\.self) { filter in
                    Button(action: {
                        self.filter = filter
                    }) {
                        
                        VStack {
                            Text(filter)
                                .font(.footnote)
                            Rectangle()
                                .frame(width: 18, height: 3)
                        }
                    }
                    .foregroundColor(self.filter == filter ? Color.black : Color.gray.opacity(0.9))
                    .fontWeight(.bold)
                    .frame(height: 40)
                }
            }
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 16) {
                    ForEach(0..<5) { index in
                        // NOTE: This coloring approach is just to show UI
                        if index == 0 {
                            TaskTape()
                        }
                        if index%2 == 0 {
                            TaskTape(urgent: true, label: "Progress", labelColor: .orange)
                        } else {
                            TaskTape()
                        }
                    }
                }
                .padding()
            }


            
        
        

        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
