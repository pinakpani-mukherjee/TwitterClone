//
//  FollowView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/23.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    var body: some View {
        HStack{
            Text("\(count)")
                .fontWeight(.bold)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

