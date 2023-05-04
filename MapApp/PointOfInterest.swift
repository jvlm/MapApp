//
//  PointOfInterest.swift
//  MapApp
//
//  Created by Joao Melo on 21/04/23.
//

import Foundation
import MapKit

struct PointOfInterest: Identifiable{
    let id: Int
    let name: String
    let address: String
    let pictures: [String]
    let coordinate: CLLocationCoordinate2D
}
