//
//  TopBar.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/17.
//

import SwiftUI

struct TopBar: View {
    @Binding var x : CGFloat
    @State var width = UIScreen.main.bounds.width

    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    withAnimation{
                        x = 0
                    }
                }, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("bg"))
                })
                Spacer(minLength: 0)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
                    .frame(width: 40,height: 40)
                
                Spacer(minLength: 0)
                
            }
            .padding(.vertical, 2)
            .padding(.horizontal)
            
            Rectangle()
                .frame(width: width,height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
   
    }
}

