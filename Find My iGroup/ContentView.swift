//
//  ContentView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        TabView {
            
            
            home(show: $show, namespace: namespace)
                .tabItem {
                    Label("My Events", systemImage: "house.fill")
                }
            
            registrationView(namespace: namespace)
                .tabItem {
                    Label("Registered", systemImage: "tray.fill")
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

