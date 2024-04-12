////
////  database.swift
////  Find My iGroup
////
////  Created by Jennifer Luvindi on 12/04/24.
////
//
//import Foundation
//
//
//final class Database {
//    private let CHOSEN_KEY = "chosen_key"
//    
//    func save(siglist: Set<Int>) {
//        let array = Array(siglist)
//        UserDefaults.standard.set(array, forKey: CHOSEN_KEY)
//    }
//    
//    func load() -> Set<Int> {
//        let array = UserDefaults.standard.array(forKey: CHOSEN_KEY) as? [Int] ?? [Int]()
//        return Set(array)
//    }
//}
