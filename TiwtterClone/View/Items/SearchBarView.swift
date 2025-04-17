//
//  SearchBarView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/17.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text:String
    @Binding var isEditing:Bool
    var body: some View {
        HStack{
            TextField("Search Twitter",text: $text)
                .padding(8)
                .padding(.horizontal,24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                            .padding(.leading,8)
                    }
                )
        }
        .onTapGesture {
            isEditing = true
        }
    }
}

