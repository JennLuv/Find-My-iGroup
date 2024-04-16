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
    var registered: Bool
    @State var show = false
    @Binding var data : [Card]
    
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Registration Details")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Form {
                    
                    Section (header: Text("Event Details")){
                        //                    Text("Logout")
                        NavigationLink {
                            eventDetailView(image: image, activityName: activityName, date: date, sigName: sigName, namespace: namespace, registered: registered, show: $show)
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
                            sigSelectionView(data: $data)
                        } label: {
                            Text("Joined Members (1)")
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
                            Text("Unpaid")
                            //                                .foregroundStyle(Color.green)
                        }
                        
                        //                        Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/, label: {
                        //                            Text("Payment Status")
                        //                        })
                        NavigationLink {
                            paymentDetailsView()
                        } label: {
                            Text("Pay")
                                .foregroundStyle(Color.orange)
                            //                                .opacity(0.6)
                        }
                    }
                    
                    Section(header: Text("GET NOTIFIED")){
                        //                    Text("Logout")
                        Toggle(isOn: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/, label: {
                            Text("Add to Calendar")
                        })
                        
                    }
                    
                    
                    
                }
                
//                .padding(.top, -80)
                //                .padding(.horizontal, -20)
                
            }
        }
        .tint(Color.orange)
        //        .ignoresSafeArea()
        //        .toolbar{
        //            ToolbarItem(placement: .navigationBarTrailing) {
        //                Button("Back") {
        //                }
        //            }
        //        }
        
        
        
    }
    
    
}
//#Preview {
//    registeredEventPaymentView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton")
//}

//struct CourseView2_Previews : PreviewProvider {
//    @Namespace static var namespace
//
//    static var previews: some View{
//        registeredEventPaymentView(image: "badmintonImage", activityName: "BADMINTON FUN GAME DAY", date: "11 April 2024 at 18.33", sigName: "SIG Badminton", namespace: namespace)
//    }
//}
