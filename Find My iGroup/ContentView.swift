//
//  ContentView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import SwiftUI

struct ContentView: View {
    //
    var body: some View {
        TabView {
            homeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            registrationView()
                .tabItem {
                    Label("Registration", systemImage: "tray.fill")
                }
            profileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .tint(Color.orange)
    }
}

#Preview {
    ContentView()
}

