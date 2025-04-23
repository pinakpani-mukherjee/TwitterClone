//
//  SlideMenu.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/23.
//

import SwiftUI

struct SlideMenu: View {
    
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var width = UIScreen.main.bounds.width
    @State var show = false
    var body: some View {
        VStack{
            HStack(spacing:0, content: {
                VStack(alignment: .leading, content: {
                    Image("logo")
                        .resizable()
                        .frame(width: 60,height: 60)
                        .clipShape(Circle())
                    
                    HStack(alignment: .top,spacing: 12, content: {
                        VStack(alignment: .leading,spacing: 12, content: {
                            Text("Cem")
                                .font(.title3)
                                .fontWeight(.bold)
      
                            
                            Text("@cem_salta")
                                .foregroundColor(.gray)
                            
                            HStack(spacing:20, content: {
                                FollowView(count: 8, title: "Following")
                                FollowView(count: 16, title: "Followers")
                            })
                            .padding(.top,10)
                            
                            Divider()
                                .padding(.top,10)
                        })
                        Spacer(minLength: 0)
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }, label: {
                            Image(systemName: show ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color("bg"))
                        })
                    })
                    VStack(alignment: .leading, content: {
                        ForEach(menuButtons,id:\.self){ item in
                            MenuButton(title: item)
                            
                        }
                        Divider()
                            
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            MenuButton(title:"Twitter Ads")
                        })
                        
                        Divider()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            MenuButton(title: "Settings and privacy")

                        })
                        .padding(.top,10)
                        .padding(.horizontal,-30)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            MenuButton(title: "Help centre")
       
                        })
                        .padding(.horizontal,-30)
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)
                        
                        HStack{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Image("help")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 26,height: 26)
                                    .foregroundColor(Color("bg"))
                            })
                            Spacer(minLength: 0)
                            
                            Image("barcode")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 26,height: 26)
                                .foregroundColor(Color("bg"))
                        }
                    })
                    .opacity(show ? 1 : 0)
                    .frame(height: show ? nil : 0)
                    
                    VStack(alignment: .leading, content: {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Create New Account")
                                .foregroundColor(Color("bg"))
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Add an Existing Account")
                                .foregroundColor(Color("bg"))
                        })
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    })
                    .opacity(show ? 0 : 1)
                    .frame(height: show ? nil : 0)
                    .padding()
                    
                    Spacer(minLength: 0)
                    
                })
                .padding(.horizontal,20)
                .padding(.top,edges!.top == 0 ? 15 : edges?.top)
                .padding(.top,edges!.bottom == 0 ? 15 : edges?.bottom)
                .frame(width: width - 90)
                .background(.background)
                .ignoresSafeArea(.all,edges: .vertical)
                
                Spacer(minLength: 0)
            })
        }
    }
}

#Preview {
    SlideMenu()
}
