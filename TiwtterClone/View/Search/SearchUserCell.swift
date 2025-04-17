//
//  SearchUserCell.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/17.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{ 
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44,height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("Cem")
                    .fontWeight(.heavy)
                Text("@cem_salta")
            }
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    SearchUserCell()
}
