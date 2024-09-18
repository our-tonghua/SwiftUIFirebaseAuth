//
//  User.swift
//  SwiftUIFirebaseAuth
//
//  Created by Administrator on 24/06/1403 AP.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let component = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: component)
        }
        
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Kobe Bryant", email: "test@gmail.com")
}
