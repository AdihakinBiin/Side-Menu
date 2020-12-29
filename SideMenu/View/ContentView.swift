//
//  ContentView.swift
//  SideMenu
//
//  Created by Abdihakin Elmi on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = false
    var body: some View {
        NavigationView {
            ZStack{
                if isShowing {
                    SMView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 0)
                    .offset(x: isShowing ? 300 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button{
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    }label:{
                        Image(systemName: "list.bullet").accentColor(.black)
                    }).navigationTitle("Home")
            }.onAppear{
                isShowing = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Hello World").padding()
        }
    }
}
