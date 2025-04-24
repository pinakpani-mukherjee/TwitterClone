//
//  RegisterView.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/25.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.blue)
                    })
                    Spacer()
                }
                .padding(.horizontal)
                Image("Twitter")
                    .resizable()
                    .scaledToFit()
                    .padding(.trailing)
                    .frame(width: 40,height: 40)
            }
            Text("Create your Account")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 35)
            VStack(alignment: .leading,spacing: nil, content: {
                CustomAuthTextField(placeholder: "Name", text: $name)
                CustomAuthTextField(placeholder: "Phone number or Email", text: $email)
                SecureAuthTextField(placeholder: "Password", text: $password)
            })
            Spacer()
            VStack{
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                HStack{
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Capsule()
                            .frame(width: 60,height: 30, alignment: .center)
                            .foregroundColor(Color(red: 29/255, green: 161/255, blue: 242/255))
                            .overlay(
                                Text("Next")
                                    .foregroundColor(.white )
                            )
                    })
                }
                .padding(.trailing)
            }
        }
    }
}

#Preview {
    RegisterView()
}
