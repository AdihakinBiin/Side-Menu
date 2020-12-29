//
//  SMView.swift
//  SideMenu
//
//  Created by Abdihakin Elmi on 12/29/20.
//

import SwiftUI

struct SMHeaderView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }label:{
                Image(systemName: "xmark").frame(width: 24, height: 24, alignment: .center).foregroundColor(.white).padding()
            }
            VStack(alignment: .leading) {
                Button {
                    print("")
                }label: {
                    Image(systemName: "person.circle").resizable().frame(width: 64, height: 64, alignment: .center)
                }.accentColor(.white)
                Text("Abdihakin Elmi").font(.title).foregroundColor(.white)
                Text("@Elmi").foregroundColor(.white).padding(.bottom, 24)
                HStack(spacing: 12){
                    HStack(spacing: 10){
                        Text("270").bold()
                        Text("Following")
                    }
                    HStack(spacing: 10){
                        Text("1,290").bold()
                        Text("Followers")
                    }
                    Spacer()
                }.foregroundColor(.white)
                
                Spacer()
            }.padding()
        }
    }
}

