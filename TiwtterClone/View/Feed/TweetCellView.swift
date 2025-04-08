//
//  TweetCellView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/08.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet : String
    var tweetImage: String?
    
    var body: some View {
        VStack{
            HStack(alignment: .top,spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55,height: 55)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading ,spacing: 10, content: {
                    (
                        Text("Cem")
                            .fontWeight(.bold)
                            .foregroundStyle(.primary)
                        +
                        Text("@cem_salta")
                            .foregroundStyle(.gray)
                    )
                    
                    Text(sampleText)
                        .frame(maxHeight: 100,alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader{proxy in Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250) 
                    }
                        
                    
                })
            })
            // Cell Bottom
            HStack(spacing: 50, content: {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(.gray)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18,height: 14)
                        .foregroundColor(.gray)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("love")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(.gray)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("upload")
                        .resizable()
                        .frame(width: 18,height: 15)
                        .foregroundColor(.gray)
                })
            })
            .padding(.top,4) 
        }
    }
}

#Preview {
    TweetCellView(tweet: sampleText)
}

var sampleText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
