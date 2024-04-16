//
//  profileView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct paymentDetailsView: View {

    
    var body: some View {
        NavigationView {
            VStack{
                Text("Payment Details")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Form {
                    
                    Section (header: Text("PAYMENT INFORMATION")){
                        HStack {
                            Text("Amount")
                                .opacity(0.6)
                            Spacer()
                            Text("Rp 15.000")

                        }
                    }
                    
                    Section (header: Text("RECIPIENT INFORMATION")){
                        HStack {
                            Text("Account Number")
                                .opacity(0.6)
                            Spacer()
                            Text("42334445679272")
                        }
                        HStack {
                            Text("Bank")
                                .opacity(0.6)
                            Spacer()
                            Text("Jenius")
                        }
                        HStack {
                            Text("Name")
                                .opacity(0.6)
                            Spacer()
                            Text("Hosea")
                        }
                    }
                    
                    Section{
    //                    Text("Logout")
                        HStack {
                            Button {
                            } label: {
                                Text("Select Payment Proof")
                            }
                            .foregroundColor(.orange)
                            
                        }

                    }
                    
                }
//                .padding(.top, -20)
            }
            .tint(Color.orange)
            
        }
        
    }
}

#Preview {
    paymentDetailsView()
}

