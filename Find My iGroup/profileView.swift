//
//  profileView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 11/04/24.
//

import Foundation
import SwiftUI

struct profileView: View {

    
    var body: some View {
        NavigationView {
            VStack{
                Text("My Profile")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Form {
                    
                    Section {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
    //                            .font(.system(size: 60))
                            
                            Spacer(minLength: 15)
                            
                            NavigationLink {
//                                homeView()
                            } label: {
                                idView(name: "Embun Dhau", companyNumber: "C7S2-000")
                            }

                        }
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                    }
                    
                    Section{
                        
                        NavigationLink {
                            sigSelectionView()
                        } label: {
                            Text("SIG Selection")
                        }
                        
                        NavigationLink {

                        } label: {
                            Text("Email")
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Change Password")
                        }
                    }
                    
                    Section{
    //                    Text("Logout")
                        Button {
                        } label: {
                            Text("Logout")
                                .frame(maxWidth: .infinity)
                        }
                        .foregroundColor(.red)

                    }
                    
                }
                .padding(.top, -20)
            }
            .tint(Color.orange)
        }
        
    }
}

#Preview {
    profileView()
}

struct idView: View {
    
    var name: String
    var companyNumber: String
    
    var body: some View {
        VStack{
            Text(name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .bold()
            Text(companyNumber)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
