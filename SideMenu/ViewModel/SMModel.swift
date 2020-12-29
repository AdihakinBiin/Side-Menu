//
//  SMModel.swift
//  SideMenu
//
//  Created by Abdihakin Elmi on 12/29/20.
//

import Foundation
enum SMModel: Int, CaseIterable {
    case Profile
    case Lists
    case Bookmarks
    case messages
    case notifications
    case logout
    
    
    var title: String {
        switch self {
        case .Profile:
            return  "Profile"
        case .Lists:
            return "Lists"
        case .Bookmarks:
            return "Bookmarks"
        case .messages:
            return "messages"
        case .notifications:
            return "notifications"
        case .logout:
            return "logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .Profile:
            return "person"
        case .Lists:
            return "list.star"
        case .Bookmarks:
            return "bookmark"
        case .messages:
            return "message"
        case .notifications:
            return "bell"
        case .logout:
            return "arrow.left.square"
        }
    }
    
}
