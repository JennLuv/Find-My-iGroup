//
//  sigSelectionView.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 12/04/24.
//

import Foundation
import SwiftUI

struct sigSelectionView: View {
    @State private var vm = ViewModel()
    
    
    var body: some View {
        VStack {
            Button("SIG Selected", action: vm.sortChosen)
            
            List{
                ForEach(vm.filteredList){ item in
                    HStack{
                        VStack (alignment: .leading) {
                            Text(item.sigName)
                        }
                        Spacer()
                        Image(systemName: vm.contains(item) ? "checkmark.circle.fill" : "checkmark.circle")
                            .onTapGesture {
                                vm.toggleChosen(siglist: item)
                            }
                    }
                }
            }
        }
        
    }
}

#Preview{
    sigSelectionView()
}

struct sigList: Identifiable, Codable{
    var id: Int
    var sigName: String
    var iChosen: Bool
    
    
    static var sampleList: [sigList] {
            let namesArray = ["Badminton", "Swimming", "Basketball", "Billiard", "Hockey", "Hiking"]
            
            // Use map to create sigList instances directly
            let tempList = namesArray.enumerated().map { index, name in
                sigList(id: index, sigName: name, iChosen: false)
            }
            
            return tempList
        }
}

