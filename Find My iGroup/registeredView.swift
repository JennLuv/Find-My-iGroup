//
//  registeredView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct registeredView: View {
    
    var sigName : String
    var date : String
    var paymentStatus : String
    var activityName : String
    var price : String
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .background(.white)
                .cornerRadius(10)
                .opacity(0.15)
            
                .overlay{
                    VStack{
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.orange]), startPoint: .top, endPoint: .center))
                            .frame(maxWidth: .infinity, maxHeight: 68, alignment: .leading)
                            .clipShape(
                                .rect(
                                    topLeadingRadius: 10,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 10
                                )
                            )
                            .opacity(0.5)
                        Spacer()
                    }
                    
                    HStack {
                        VStack {
                            HStack {
                                Image(systemName: "person.3.fill")
                                Text(sigName)
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Text(date)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.subheadline)
                            
                            Spacer()
                        }
                        VStack {
                            Rectangle()
                                .fill(Color.red)
                                .frame(width: 77, height: 28)
                                .cornerRadius(50)
                                .overlay{
                                    Text(paymentStatus)
                                        .font(.subheadline)
                                        .bold()
                                }
                                .padding(.top, 5)
                            
                            Spacer()
                        }
                    }
                    .padding()
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 156, alignment: .leading)
            
            VStack{
                Spacer(minLength: 68)
                HStack{
                    Text(activityName)
                        .font(.title2)
                        .bold()
                        .frame(width: 220, height: 80)
//                        .border(Color.red)
                    Spacer()
                    Divider() // Divider here
                        .background(Color.white)
                        .bold()
                    Spacer()
                    Text(price)
                }
                .padding()
                //                .border(Color.blue)
                //                    .border(Color.red)
            }
//            .frame(maxWidth: .infinity, maxHeight: 88)
        }
        .frame(height: 156)
    }
}

#Preview {
    registeredView(sigName : "SIG Badminton", date : "13 April 2024 at 13.33", paymentStatus : "Not Paid", activityName : "BADMINTON FUN GAME", price : "Rp 15.000")
}
