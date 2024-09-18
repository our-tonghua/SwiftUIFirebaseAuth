//
//  SwiftUIFirebaseAuthApp.swift
//  SwiftUIFirebaseAuth
//
//  Created by Administrator on 24/06/1403 AP.
//

import SwiftUI
import Firebase

@main
struct SwiftUIFirebaseAuthApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
