//
//  CityViewModel.swift
//  MapApp
//
//  Created by Joao Melo on 23/04/23.
//

import Foundation
import MapKit
import SwiftUI

class CityViewModel: ObservableObject {
    // City list from the Data Service
    @Published var cities: [City]
    // Current Point Of Interest
    @Published var selectedPointOfInterest: PointOfInterest
    @Published var showModal: Bool

    // Current city
    @Published var selectedCity: City {
        didSet {
            self.showModal = false
            updateMapRegion(city: selectedCity)
        }
    }
    
    @Published var currentCoordinate: MKCoordinateRegion = MKCoordinateRegion()
    
    //Show city menu
    @Published var showCityMenu: Bool = false

    
    private func updateMapRegion(city: City){
        withAnimation(.easeInOut){
            currentCoordinate = MKCoordinateRegion(center: city.pointsOfInterest[0].coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        }
        
    }
    
    init() {
        let cities = CityDataService.cityList
        self.cities = cities
        self.selectedCity = cities.first!
        self.selectedPointOfInterest = cities.first!.pointsOfInterest.first!
        self.showModal = false
        self.updateMapRegion(city: cities.first!)
    }
    
    func toggleCityList() {
        withAnimation(.easeInOut) {
            showCityMenu = !showCityMenu
        }
    }
    

    func selectCity(city: City){
        withAnimation(.easeInOut){
            selectedCity = city
            showCityMenu = false
        }
    }
}
