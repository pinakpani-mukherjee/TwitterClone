//
//  Feed.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/15.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false,content: {
            VStack(spacing:18){
                TweetCellView(tweet: "Hey its tim!!",tweetImage: "post")
                Divider()
                ForEach(1...20,id: \.self ){ _ in
                    TweetCellView(tweet:  sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

#Preview {
    Feed()
}
