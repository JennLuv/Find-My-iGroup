//
//  sigSelectionViewModel.swift
//  Find My iGroup
//
//  Created by Jennifer Luvindi on 12/04/24.
//

import Foundation

extension sigSelectionView {
    
    final class ViewModel: ObservableObject {
        @Published var siglist = [sigList]()
        @Published var showingChosen = false
        @Published var savedList: Set<Int> = [1,2]
        
        var filteredList: [sigList] {
            if showingChosen {
                return siglist.filter {savedList.contains($0.id)}
            }
            else {
                return siglist
            }
        }
        
        private var db = Database()
        
        init() {
            self.savedList = db.load()
            self.siglist = sigList.sampleList
        }
        
        func sortChosen() {
            showingChosen.toggle()
        }
        
        func contains(_ siglist: sigList) -> Bool{
            savedList.contains(siglist.id)
        }
        
        func toggleChosen(siglist: sigList){
            if contains(siglist){
                savedList.remove(siglist.id)
            } else {
                savedList.insert(siglist.id)
            }
            db.save(siglist: savedList)
        }
        
    }
    
}
