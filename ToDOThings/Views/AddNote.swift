//
//  AddNote.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 13/08/2023.
//

import SwiftUI

struct AddNote: View {
    let priorities = ["High", "Medium", "Low"]
    @State private var title: String = ""
    @State private var dummyDescription: String = "example description example description example description example description example description example description example description"

    @State private var priority: String = "High"
    @State private var fromTime = 1
    @State private var toTime = 2
    
    @State private var selectedHour = 1
    @State private var isPopoverVisible = false
    let hours = 1...12 // Change this range as needed

    let days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    let daysDates = ["15", "16", "17", "18", "19", "20", "21"]

    var body: some View {
        VStack(spacing: 5) {
            
            //MARK: - Top Bar
            HStack {
                Image("menus")
                Spacer()
                Text("Create New Task")
                        .font(.title3)
                        .fontWeight(.bold)
                Spacer()
                Image("profileImage")
            }
            .padding()
            .frame(maxHeight: .infinity, alignment: .top)

            VStack(spacing: 40) {
                HStack {
                    VStack {
                        Text("18th February, 2022")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("02 tasks today")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.caption2)
                            .fontWeight(.regular)
                            .foregroundColor(.gray)
                    }
                    
                    ZStack {
                        Circle()
                            .foregroundColor(.gray.opacity(0.1))
                            .frame(width: 40, height: 40)
                        Image(systemName: "calendar")
                            .foregroundColor(.black.opacity(0.5))
                    }
                }
                    HStack(spacing: 25) {
                        ForEach(0..<days.count, id: \.self) { index in
                            VStack(spacing: 8) {
                                Text(daysDates[index])
                                    .font(.subheadline)
                                    .foregroundColor(index == 2 ? Color.white : Color.gray)
                                Text(days[index])
                                    .font(.subheadline)
                                    .foregroundColor(index == 2 ? Color.white : Color.gray)

                            }
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(index == 2 ? Color(hex: "F1A800") : Color.clear)
                                    .frame(width: 40 ,height: 60)
                            )

                        }
                    }
            }
            .frame(width: 340, height: 152)
            .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)


            
            HStack {
                VStack(alignment: .leading) {
                    Text("From")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()

                    Button(action: {
                        //
                        
                    }) {
                        HStack {
                            Text("10:00 AM")
                                .font(.footnote)
                                .padding(.leading)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.down")
                                .font(.footnote)
                                .padding(.trailing)
                        }
                        .foregroundColor(.gray)
                        .frame(width: 141, height: 41)
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)

                    }
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("To")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding()

                    Button(action: {
                        //
                        
                    }) {
                        HStack {
                            Text("10:00 AM")
                                .font(.footnote)
                                .padding(.leading)
                            
                            Spacer()
                            
                            Image(systemName: "chevron.down")
                                .font(.footnote)
                                .padding(.trailing)
                        }
                        .foregroundColor(.gray)
                        .frame(width: 141, height: 41)
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)

                    }
                }




            }
            .padding()

            Text("Title")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                
            TextField("Android App Development", text: $title)
                .padding(.leading, 10)
                .foregroundColor(.gray)
                .frame(width: 339, height: 50)
                .background(Color(.white))
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)

            
            
            Text("Add Details")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                
            TextEditor(text: $dummyDescription)
                .padding(.leading, 10)
                .foregroundColor(.gray)
                .frame(width: 335, height: 99)
                .background(Color(.white))
                .cornerRadius(10)
            
                .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)

            VStack() {
                Text("Choose Priority")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                HStack(spacing: 30) {
                    Group {
                        ZStack {
                            Rectangle()
                                .cornerRadius(21)
                                .foregroundColor(.red.opacity(0.2))
                            Text("High")
                                .font(.footnote)
                                .foregroundColor(.red)
                        }
                        ZStack {
                            Rectangle()
                                .cornerRadius(21)
                                .foregroundColor(.blue.opacity(0.2))
                            Text("Medium")
                                .font(.footnote)
                                .foregroundColor(.blue)
                        }
                        ZStack {
                            Rectangle()
                                .cornerRadius(21)
                                .foregroundColor(.gray)
                            Text("Low")
                                .font(.footnote)
                        }
                    }
                    .foregroundColor(self.priority == priority ? Color.black : Color.gray.opacity(0.9))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 35)
                }
                .padding()


            }
        
            
        

        }
    }
}


struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}



