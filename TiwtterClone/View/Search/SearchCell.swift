//
//  SearchCell.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/17.
//

import SwiftUI

struct SearchCell: View {
    
    var tag = ""
    var tweets = ""
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            Text(tag).fontWeight(.heavy)
            Text(tweets + "Tweets").fontWeight(.light)
        })
    }
}

#Preview {
    SearchCell()
}
