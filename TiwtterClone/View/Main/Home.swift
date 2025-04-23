//
//  Home.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/15.
//

import SwiftUI

struct Home: View {
    
    @State var selectedIndex = 0
    @State var showCreateTweet = false
    @State var tweet = ""
    var body: some View {
        VStack{
            ZStack{
                TabView {
                    Feed().onTapGesture {
                        self.selectedIndex = 0
                    }
                    .navigationBarHidden(true)
                    .tabItem {
                        if (selectedIndex == 0) {
                            Image("Home")
                                .renderingMode(.template)
                                .foregroundColor(Color("bg"))
                        }
                        else{
                            Image("Home")
                        }
                    }
                    .tag(0)
                    SearchView().onTapGesture {
                        self.selectedIndex = 1
                    }
                    .navigationBarHidden(true)
                    .tabItem {
                        if (selectedIndex != 1) {
                            Image("Search")
                                .renderingMode(.template)
                                .foregroundColor(Color("bg"))
                        }
                        else{
                            Image("Search")
                        }
                    }
                    .tag(1)
                    NotificationsView().onTapGesture {
                        self.selectedIndex = 2
                    }
                    .navigationBarHidden(true)
                    .tabItem {
                        if (selectedIndex != 2) {
                            Image("Notifications")
                                .renderingMode(.template)
                                .foregroundColor(Color("bg"))
                        }
                        else{
                            Image("Notifications")
                        }
                    }
                    .tag(2)
                    MessagesView().onTapGesture {
                        self.selectedIndex = 3
                    }
                    .navigationBarHidden(true)
                    .tabItem {
                        if (selectedIndex != 3) {
                            Image("Messages")
                                .renderingMode(.template)
                                .foregroundColor(Color("bg"))
                        }
                        else{
                            Image("Messages")
                        }
                    }
                    .tag(3)
                }
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            self.showCreateTweet.toggle()
                        }, label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 20,height: 20 )
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        })
                       
                    }.padding()
                }.padding(.bottom,65)
                
            }
            .sheet(isPresented: $showCreateTweet, content: {
                CreateTweetView(tweet: tweet)
            })
        }
    }
}

#Preview {
    Home()
}
