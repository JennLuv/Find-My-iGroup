//
//  listView.swift
//  customTransitionHero
//
//  Created by Jennifer Luvindi on 01/04/24.
//

import SwiftUI

struct listView: View {
//    @State private var sigs = sigslist.preview()
//    @Binding var selectedSide:
    
    @State var sigs:[sigslist]
    
    var selectedSigs: [sigslist] {
            return sigs.filter { $0.isChecked }
        }

    var body: some View {
        List(sigs, id: \.name) { sigs in
            HStack{
                Text(sigs.name)
                Spacer()
                Button {
                    toggleChecked(for: sigs)
                    
                    
                } label: {
                    Image(systemName: sigs.isChecked ? "checkmark.circle.fill" : "circle")

                }
            }
        }
    }
    func toggleChecked(for sig: sigslist) {
            if let index = sigs.firstIndex(where: { $0.name == sig.name }) {
                sigs[index].isChecked.toggle()
            }
        }
}

#Preview {
    listView(sigs: sigslist.preview())
}
