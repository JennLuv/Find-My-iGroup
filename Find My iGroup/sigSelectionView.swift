//
//  SIGs.swift
//  customTransitionHero
//
//  Created by Jennifer Luvindi on 01/04/24.
//

import SwiftUI

struct sigSelectionView: View {
    @Binding var data : [Card]
    @State private var selectedSide = 1
    
    var selectedSigs: [Card] {
        if selectedSide == 0 {
            return data.filter { $0.joined }
        } else {
            return data
        }
    }
    
    var body: some View {
        VStack {
            
            Text("Edit SIGs")
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Picker("Choose the SIGs you joined", selection: $selectedSide) {
                Text("Selected SIGs").tag(0)
                Text("All").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            List(selectedSigs) { sig in
                HStack {
                    Text(sig.sigName) // Accessing the `sigName` property correctly
                    Spacer()
                    Button {
                        // Toggle the `joined` property of the selected `Card`
                        if let index = data.firstIndex(where: { $0.id == sig.id }) {
                            data[index].joined.toggle()
                        }
                    } label: {
                        Image(systemName: sig.joined ? "checkmark.circle.fill" : "circle")
                    }
                }
                
                
            }
            .padding(.horizontal, -20)
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    ContentView()
}
