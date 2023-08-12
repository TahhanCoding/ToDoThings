//
//  CardView.swift
//  ToDOThings
//
//  Created by Ahmed Shaban on 12/08/2023.
//

import SwiftUI

struct CardView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        ZStack {
            // background
            Rectangle()
                .fill(Color.blue)
                .cornerRadius(10)

            Image("cardMask")

            
            // contents
            VStack(spacing: 5) {
                
                // first row: symbol and menu dots
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color.white.opacity(0.4))
                            .frame(width: 20, height: 25)
                            .cornerRadius(5)
                        Image(systemName: "iphone.gen1")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(-90))
                }
                .padding(10)
                .frame(maxHeight: .infinity, alignment: .top)

                
                Group {
                        Text("2 Tasks")
                            .font(.caption2)
                            .foregroundColor(.white.opacity(0.6))
                        
                        Text("Mobile App Design")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        
                        Text("I like to design mobile apps as It makes me happy.")
                            .font(.caption2)
                            .foregroundColor(.white.opacity(0.6))
                            .padding(.bottom, 20)

                }
                .frame(maxWidth: .infinity, alignment: .leading)


                .padding(.leading, 5)
                



                
            }
            
            
        }
        .frame(width: 152, height: 190)

    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
