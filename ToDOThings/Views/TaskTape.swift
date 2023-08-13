//
//  TaskTape.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 12/08/2023.
//

import SwiftUI

struct TaskTape: View {
    
    @State var urgent: Bool = false
    @State var label: String = "To do"
    @State var labelColor: Color = .blue
    
    var body: some View {
        VStack {
            HStack {
                // title
                Text("UX Design")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                
                
                // category
                ZStack {
                    Rectangle()
                        .foregroundColor(labelColor)
                        .frame(width: 56, height: 20)
                        .cornerRadius(10)
                    Text(label)
                        .font(.caption2)
                        .foregroundColor(.white)
                }

                
                Spacer()
                
                // menu dots
                VStack() {
                    Button(action: {
                        // do this


                    }) {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                            .rotationEffect(.degrees(-90))
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 15)
                    }
            }
            
            Spacer()
            
            HStack {
                // date
                HStack {
                    Image(systemName: "calendar")
                    Text("Sun 20 Aug, 10:00 AM")
                }
                .foregroundColor(.gray.opacity(0.8))
                .font(.footnote)
                
                // urgent
                if urgent {
                    HStack {
                        Image(systemName: "flag.fill")
                        Text("Urgent")
                    }
                    .foregroundColor(.red)
                    .font(.footnote)
                }
                Spacer()
            }
        }
        .padding(5)
        .background(Color(.white))
        .frame(width: 340, height: 71)
        .cornerRadius(5)
        .shadow(color: Color.gray.opacity(0.2), radius: 4, x: 0, y: 5)
    }
}


struct TaskTape_Previews: PreviewProvider {
    static var previews: some View {
        TaskTape()
    }
}
