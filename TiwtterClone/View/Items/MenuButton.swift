//
//  MenuButton.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/23.
//

import SwiftUI

struct MenuButton: View {
    var title: String
    var body: some View {
        HStack(spacing:15, content: {
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24,height: 24)
                .foregroundColor(.gray)
            Text(title)
            Spacer(minLength: 0)
        })
        .padding(.vertical,12)
    }
}

