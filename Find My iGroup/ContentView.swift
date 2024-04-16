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
    @State var data = [
        Card(id: 1,image: "basketballImage", activityName: "BASKETBALL SPAR DAY FUN", date : "20 April 2024 at 16.33", sigName: "SIG Basketball", joined: false, registered: false),
        Card(id: 2,image: "swimmingImage", activityName: "SWIMMING TOGETHER DAY", date : "25 April 2024 at 10.33", sigName: "SIG Swimming", joined: true, registered: true),
        Card(id: 3,image: "billiardImage", activityName: "BILLIARD FIGHT DAY", date : "18 April 2024 at 7.33", sigName: "SIG Billiard", joined: false, registered: true),
        Card(id: 4,image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date : "11 April 2024 at 18.33", sigName: "SIG Badminton", joined: true, registered: false)
    ]
    
    var body: some View {
        TabView {
            
            
            home(data: $data, show: $show, namespace: namespace)
                .tabItem {
                    Label("My Events", systemImage: "house.fill")
                }
            
            registrationView(namespace: namespace, data: $data)
                .tabItem {
                    Label("Registered", systemImage: "tray.fill")
                }
            
            profileView(data: $data)
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

