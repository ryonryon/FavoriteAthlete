//
//  Athelete.swift
//  FavoriteAthlete
//
//  Created by Ryo Togashi on 2019-08-28.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "(\(name), \(age))"
    }
}

