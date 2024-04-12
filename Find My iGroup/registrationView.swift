//
//  registrationView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct registrationView: View {
    var body: some View {
        VStack {
            Text("Registered Events")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ScrollView{
                registeredView(sigName : "SIG Badminton", date : "13 April 2024 at 13.33", paymentStatus : "Not Paid", activityName : "BADMINTON FUN GAME", price : "Rp 15.000")
                    .padding(.bottom, 20)
                
                registeredView(sigName : "SIG Billiard", date : "23 April 2024 at 11.33", paymentStatus : "Not Paid", activityName : "BILLIARD NONGKY TOGETHER", price : "Rp 20.000")
                    .padding(.bottom, 20)
            }
            .padding(.top)
//            .border(Color.red)
            
            Spacer()
            
        }
        .ignoresSafeArea()
        .padding(.top)
        .padding(.horizontal)
    }
}

#Preview {
    registrationView()
}

