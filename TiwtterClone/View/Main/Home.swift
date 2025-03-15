//
//  Home.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/15.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ZStack{
                TabView {
                    Feed().tabItem { Image("Home") }
                    SearchView().tabItem { Image("Search") }
                    NotificationsView().tabItem { Image("Notifications") }
                    MessagesView().tabItem { Image("Messages") }
                }
            }
        }
    }
}

#Preview {
    Home()
}
