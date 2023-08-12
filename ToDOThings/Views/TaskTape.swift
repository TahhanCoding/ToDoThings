//
//  TaskTape.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 12/08/2023.
//

import SwiftUI

struct TaskTape: View {
    

    var body: some View {

            
            HStack {
                Group {
                    VStack(alignment: .leading) {
                        Text("Mobile App Design")
                            .fontWeight(.medium)
                            .foregroundColor(.black)

                        
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "calendar")
                            Text("Sun 20 Aug, 10:00 AM")
                        }
                        .foregroundColor(.gray.opacity(0.8))
                        .font(.footnote)

                        
                    }
                    .padding(.leading, 15)
                    .padding(.bottom, 5)
                    .padding(.top, 5)


                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                // Menu dots
                VStack() {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(-90))
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 15)
            }
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
