//
//  SMOptionsView.swift
//  SideMenu
//
//  Created by Abdihakin Elmi on 12/29/20.
//

import SwiftUI

struct SMOptionsView: View {
    var options: SMModel
    var body: some View {
        HStack(){
            Image(systemName: options.imageName).resizable().frame(width: 24, height: 24, alignment: .center)
            Text(options.title).font(.system(size: 15, weight: .semibold))
            Spacer()
        }.foregroundColor(.white).padding(.leading, 16).padding(.bottom, 10)
        
    }
}

