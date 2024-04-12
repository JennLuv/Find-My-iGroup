//
//  sigslist.swift
//  customTransitionHero
//
//  Created by Jennifer Luvindi on 01/04/24.
//

struct sigslist {
    var name: String
    var isChecked: Bool
    
    static func preview() -> [sigslist] {
        [sigslist(name: "Volleyball", isChecked: true),
         sigslist(name: "Badminton", isChecked: true),
         sigslist(name: "Swimming", isChecked: false),
         sigslist(name: "Tennis", isChecked: false),
         sigslist(name: "Billiard", isChecked: false),
         sigslist(name: "Basketball", isChecked: false),
         sigslist(name: "Golf", isChecked: false),
         sigslist(name: "Soccer", isChecked: false),
         sigslist(name: "Boardgame", isChecked: false),
         sigslist(name: "Origami", isChecked: false),
         sigslist(name: "Hicking", isChecked: false)
         
        ]
    }
    
}

//class ModelData {
//    var data: [sigslist] =
//}
