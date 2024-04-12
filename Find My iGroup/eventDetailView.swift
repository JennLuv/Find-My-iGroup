//
//  sigView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct eventDetailView: View {
    
    var image : String
    var activityName : String
    var date : String
    var sigName : String
    
    
    var body: some View {
        VStack {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFill()
                //                    .frame(width: 358, height: 151)
                    .frame(maxWidth: 403, maxHeight: 327)
                    .cornerRadius(10)
                    .clipped()
                    .overlay(
                        ZStack {
                            
                            Rectangle()
                                .fill(.linearGradient(Gradient(colors: [Color.orange, Color.clear]),startPoint: .bottom, endPoint: .center))
                                .opacity(0.3)
                                .cornerRadius(10)
                            Rectangle()
                                .fill(.linearGradient(Gradient(colors: [Color.black, Color.clear]),startPoint: .bottom, endPoint: .center))
                                .opacity(0.9)
                                .cornerRadius(10)
                        }
                    )
                
                
                
                VStack {
                    Spacer()
                    HStack {
                        VStack{
                            //                    Text(Date.now.formatted(date: .long, time: .shortened))
                            Text(date)
                                .font(.callout)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 2)
                            Text(activityName)
                                .font(.title2)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 2)
                            HStack {
                                Image(systemName: "person.3.fill")
                                Text(sigName)
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.leading)
                        
                    }
                    .padding(.bottom)
                    .padding(.leading,4)
                }
                .frame(maxWidth: 403, maxHeight: 327)
                
                //                .border(Color.red)
                
            }
            
            ZStack {
                Rectangle()
                    .fill(.thinMaterial)
                HStack {
                    VStack{
                        Text("Location")
                            .font(.subheadline)
                            .padding(.bottom,5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("The Breeze")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .bold()
                        Text("Jl. Lorem Ipsum no. 12127937 Jakarta Tenggara")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    //                            .border(Color.red)
                    .padding()
                    Spacer()
                    
                    Image(systemName: "map.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .padding()
                        .foregroundColor(.orange)
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 130)
//            .cornerRadius(10)
            .padding(.bottom)
            
            ScrollView{
                VStack (alignment: .leading){
                    HStack {
                        Text("Total Rent Amount")
                            .font(.title3)
                            .bold()
                        Spacer()
                        Text("Rp 115.000")
                    }
                    .padding(.bottom)
                    Text("Note:")
                        .bold()
                    Text("Total Rent Amount will be divided by the amount of members joined")
                        .padding(.bottom)
                    
//                    ZStack {
//                        Rectangle()
//                            .fill(.thinMaterial)
//                        HStack {
//                            VStack{
//                                Text("Location")
//                                    .font(.subheadline)
//                                    .padding(.bottom,5)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                Text("The Breeze")
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    .bold()
//                                Text("Jl. Lorem Ipsum no. 12127937 Jakarta Tenggara")
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                            }
//                            //                            .border(Color.red)
//                            .padding(10)
//                            Spacer()
//                            
//                            Image(systemName: "map.circle")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 80)
//                                .padding()
//                                .foregroundColor(.orange)
//                            
//                        }
//                    }
//                    .frame(height: 120)
//                    .cornerRadius(10)
//                    .padding(.bottom)
                    
                    Text("Description")
                        .bold()
                    Text("Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .padding(.bottom)
                    Text("Requirements:")
                        .bold()
                    Text("Lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                    
                    
                    
                    
                }
                
            }
            .padding(.horizontal)
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .fill(Color.black)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 350, height: 50)
                    .cornerRadius(15)
                    .overlay{
                        Text("Register")
                            .font(.title)
                            .bold()
                    }
                    .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: 110)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    eventDetailView(image: "badmintonImage", activityName: "BADMINTON FUN GAME", date: "11 April at 18.33", sigName: "SIG Badminton")
}
