//
//  registrationView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct registrationView: View {
    
    var namespace: Namespace.ID
    
    var body: some View {
        
        
        NavigationStack{
            VStack (alignment: .leading){
                Text("Registered Events")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                ScrollView{
                    
                    NavigationLink (destination: {
                        registeredEventPaymentView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace)
//                            .navigationBarBackButtonHidden(true)
                        
                    }, label: {
                        registeredView(sigName : "SIG Badminton", date : "13 April 2024 at 13.33", paymentStatus : "Not Paid", activityName : "BADMINTON FUN GAME", price : "Rp 15.000")
                            .padding(.top)
                            .padding(.horizontal)
                    })
                    .tint(Color.white)
                    
                    NavigationLink (destination: {
                        registeredEventPaymentView(image: "basketballImage", activityName: "BASKETBALL SPAR DAY FUN", date: "20 April 2024 at 16.33", sigName: "SIG Basketball", namespace: namespace)
//                            .navigationBarBackButtonHidden(true)
                        
                    }, label: {
                        registeredView(sigName : "SIG Basketball", date : "20 April 2024 at 16.33", paymentStatus : "Not Paid", activityName : "BASKETBALL SPAR DAY FUN", price : "Rp 15.000")
                            .padding(.top)
                            .padding(.horizontal)
                    })
                    .tint(Color.white)
                }
                
                
                
                
                //                    registeredView(sigName : "SIG Billiard", date : "23 April 2024 at 11.33", paymentStatus : "Not Paid", activityName : "BILLIARD NONGKY TOGETHER", price : "Rp 20.000")
                //                        .padding(.bottom, 20)
                
            }
            .padding(.top)
            //            .border(Color.red)
            
            Spacer()
            
        }
        .ignoresSafeArea()
        .tint(Color.orange)
        //        .padding(.top)
        //        .padding(.horizontal)
    }
    
    //            registeredEventPaymentView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton")
    
}


//#Preview {
//    registrationView()
//}

