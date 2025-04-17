//
//  SearchView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/15.
//

import SwiftUI

struct SearchView: View {
    @State var text = ""
    @State var isEditing = false
    var body: some View {
        VStack {
            SearchBarView(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            if !isEditing{
                List(0..<9){
                    i in
                    SearchCell(tag:"Hello",tweets: String(i))
                }.listStyle(PlainListStyle())
            }
            else {
                List(0..<9){
                    _ in
                    SearchUserCell()
                }.listStyle(PlainListStyle())
            }
        }
    }
}

#Preview {
    SearchView()
}
