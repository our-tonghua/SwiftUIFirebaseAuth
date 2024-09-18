//
//  ContentView.swift
//  SwiftUIFirebaseAuth
//
//  Created by Administrator on 24/06/1403 AP.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
        
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ProfileView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
