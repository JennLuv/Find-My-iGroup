//
//  ContentView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import SwiftUI

struct homeView: View {
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        VStack {
            if !show {
                VStack {
                    Text("My Events")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    ZStack {
                        Picker(selection: .constant(1), label: Text("Picker")) {
                            Text("Upcoming").tag(1)
                            Text("Registered").tag(2)
                        }
                        .tint(Color.orange)
                        .pickerStyle(.automatic)
                        .frame(maxWidth: .infinity, maxHeight: 36, alignment: .trailing)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        Text("Select Events")
                            .frame(maxWidth: .infinity, maxHeight: 36, alignment: .leading)
                            .padding(.leading)
                            .foregroundColor(.gray)
                        //                    .border(Color.blue)
                    }
                    .padding(.bottom)
                    //            .border(Color.blue)
                    
                    ScrollView{
                        sigView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date : "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace, show: $show)
                            .padding(.bottom)
                            .onTapGesture {
                                withAnimation(.spring(response: 0.2, dampingFraction: 1.0)){
                                    show.toggle()
                                }
                            }
                    }
                    
                    
                    //                sigView(image: "basketballImage", activityName: "BASKETBALL SPAR DAY FUN", date : "20 April 2024 at 16.33", sigName: "SIG Basketball")
                    //                    .padding(.bottom)
                    //
                    //                sigView(image: "swimmingImage", activityName: "SWIMMING TOGETHER DAY", date : "25 April 2024 at 10.33", sigName: "SIG Swimming")
                    //                    .padding(.bottom)
                    //
                    //                sigView(image: "billiardImage", activityName: "BILLIARD FIGHT DAY", date : "18 April 2024 at 7.33", sigName: "SIG Billiard")
                    //                    .padding(.bottom)
                    
                }
                .ignoresSafeArea()
                .padding()
                .padding(.top, 60)
                
                
                Spacer()
                
            } else {
                eventDetailView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace, show: $show)
                
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    homeView()
}

