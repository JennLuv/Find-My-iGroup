//
//  profileView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct registeredEventPaymentView: View {
    var image : String
    var activityName : String
    var date : String
    var sigName : String
    var namespace: Namespace.ID
    @Binding var show: Bool

    
    var body: some View {
        NavigationView {
            VStack{
                ZStack {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                    //                    .frame(width: 358, height: 151)
                        .frame(maxWidth: 403, maxHeight: 230)
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
                                    .opacity(1.0)
                                    .cornerRadius(10)
                                //                            .border(Color.red)
                            }
                        )
                        .matchedGeometryEffect(id: "bg", in: namespace)
                    
                    
                    
                    VStack {
                        Spacer()
                        HStack {
                            VStack{
                                //                                                Text(Date.now.formatted(date: .long, time: .shortened))
                                Text(date)
                                    .font(.callout)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.bottom, 2)
                                    .matchedGeometryEffect(id: "date", in: namespace)
                                Text(activityName)
                                    .font(.title2)
                                    .bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.bottom, 2)
                                    .matchedGeometryEffect(id: "activityName", in: namespace)
                                HStack {
                                    Image(systemName: "person.3.fill")
                                    Text(sigName)
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .matchedGeometryEffect(id: "sigName", in: namespace)
                            }
                            .frame(maxWidth: 250, alignment: .leading)
                            //                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                            Spacer()
                        }
                        .padding(.bottom)
                        .padding(.leading, 10)
                    }
                    .frame(maxWidth: 403, maxHeight: 230)
                }
                .ignoresSafeArea()
                Form {
                    
                    Section{
                        //                    Text("Logout")
                        NavigationLink {
                            eventDetailView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace, show: $show)
//                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Visit Event Details")
                                .foregroundStyle(Color.orange)
                            //                                .opacity(0.6)
                        }
                        
                        
                    }
                    
                    Section (header: Text("PRICING INFORMATION")){
                        HStack {
                            Text("Total Rent Amount")
                                .opacity(0.6)
                            Spacer()
                            Text("Rp 120.000")
                        }
                        NavigationLink {
                            sigSelectionView()
                        } label: {
                            Text("Joined Members")
                                .foregroundStyle(Color.orange)
                            //                                .opacity(0.6)
                        }
                        HStack {
                            Text("Est. Price per Person")
                                .opacity(0.6)
                            Spacer()
                            Text("Rp 120.000")
                        }
                    }
                    
                    Section(header: Text("PAYMENT INFORMATION")){
                        HStack {
                            Text("Payment Status")
                                .opacity(0.6)
                            Spacer()
                            Text("Paid")
//                                .foregroundStyle(Color.green)
                        }
//                        Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/, label: {
//                            Text("Payment Status")
//                        })
                        
                    }
                    
                    Section{
                        //                    Text("Logout")
                        Button {
//                            paymentDetailsView()
                        } label: {
                            Text("Pay")
                                .foregroundStyle(Color.red)
                                .frame(maxWidth: .infinity)
                            //                                .opacity(0.6)
                        }
                        
                    }
                    
                    
                    
                }
                .padding(.top, -70)
//                .padding(.horizontal, -20)
            }
            
        }
        .tint(Color.orange)
        
        
        
    }
    
}

struct CourseView2_Previews : PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View{
        registeredEventPaymentView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace, show: .constant(false))
    }
}
