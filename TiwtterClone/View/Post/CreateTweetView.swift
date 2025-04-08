//
//  CreateTweet.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/16.
//

import SwiftUI

struct CreateTweetView: View {
    @State var tweet = ""
    var body: some View {
        VStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Cancel")
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Tweet").padding()
                })
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
                
            }
            MultilineTextField(text: $tweet)
        }.padding()
    }
}

#Preview {
    CreateTweetView()
}
