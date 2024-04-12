//
//  sigView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct sigView: View {
    
    var image : String
    var activityName : String
    var date : String
    var sigName : String
    
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
            //                    .frame(width: 358, height: 151)
                .frame(maxWidth: .infinity, maxHeight: 151)
                .cornerRadius(10)
                .clipped()
                .overlay(
                    ZStack {
                        Rectangle()
                            .fill(.linearGradient(Gradient(colors: [Color.black, Color.clear]),startPoint: .leading, endPoint: .trailing))
                            .opacity(0.6)
                            .cornerRadius(10)
                        Rectangle()
                            .fill(.linearGradient(Gradient(colors: [Color.orange, Color.clear]),startPoint: .bottomLeading, endPoint: .center))
                            .opacity(0.3)
                            .cornerRadius(10)
                    }
                )
                .blur(radius: 0.9)
            
            
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
                //                    .border(Color.black)
                
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(.black)
                        //                            .background(.ultraThinMaterial)
                            .opacity(0.5)
                            .blur(radius: 1.0)
                            .frame(width: 55, height: 47, alignment: .leading)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 10,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 10
                                )
                            )
                        Image(systemName: "checkmark.rectangle.stack")
                            .bold()
                    }
                    //                            .border(Color.black)
                    Spacer()
                    
                }
                .frame(maxWidth: 54, maxHeight: 151, alignment: .leading)
                //                    .border(Color.black)
                
                
                
                
            }
            //                .border(Color.red)
            
        }
    }
}

#Preview {
    ContentView()
}
