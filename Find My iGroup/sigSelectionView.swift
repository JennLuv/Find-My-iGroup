//
//  SIGs.swift
//  customTransitionHero
//
//  Created by Jennifer Luvindi on 01/04/24.
//

import SwiftUI

struct sigSelectionView: View {
    @State private var selectedSide = 1
    
    var selectedSigs: [sigslist] {
            return sigs.filter { $0.isChecked }
        }
    var sigs = sigslist.preview()
    var tempArray: [sigslist] = []
    
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
            
            if selectedSide == 1 {
                listView(sigs: sigs)
                    .padding(.horizontal, -20)
            } else {
                listView(sigs: selectedSigs)
                    .padding(.horizontal, -20)
            }
        }
        .ignoresSafeArea()
        .padding(.top)
        .padding(.horizontal)
        
    }
}

#Preview {
    sigSelectionView()
}
