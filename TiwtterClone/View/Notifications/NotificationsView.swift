//
//  NotificationsView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/03/15.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9){ _ in
                    NotificationCell()
                }
            }
        }
    }
}

#Preview {
    NotificationsView()
}
