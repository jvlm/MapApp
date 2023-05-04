//
//  City.swift
//  MapApp
//
//  Created by Joao Melo on 21/04/23.
//

import Foundation

struct City: Identifiable, Equatable {
    
    let id: Int
    let name: String
    let pointsOfInterest: [PointOfInterest]
    
    //Equatable
    static func == (lhs: City, rhs: City) -> Bool {
        lhs.id == rhs.id
    }
}
