//
//  SMHeaderView.swift
//  SideMenu
//
//  Created by Abdihakin Elmi on 12/29/20.
//

import SwiftUI

struct SMView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                SMHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                ForEach(SMModel.allCases, id: \.self){ option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SMOptionsView(options: option)
                        })
                }
                Spacer()
            }.navigationBarHidden(true)
            
        }
        
    }
}

