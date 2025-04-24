//
//  TabButton.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/24.
//

import SwiftUI

struct TabButton: View {
    @Binding var currentTab: String
    var title: String
    var animation: Namespace.ID
    
    
    var body: some View {
        Button(action: {
            currentTab = title
        }, label: {
            LazyVStack(spacing:12){
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(currentTab == title ? .blue : .gray)
                    .padding(.horizontal)
                
                if currentTab == title{
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id:  "TAB", in: animation)
                }
                else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        })
    }
}

