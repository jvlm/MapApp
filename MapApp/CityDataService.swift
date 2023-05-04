//
//  CityDataService.swift
//  MapApp
//
//  Created by Joao Melo on 21/04/23.
//

import Foundation
import MapKit

class CityDataService {
   
    //New York
    
    
    static let joesPizza: PointOfInterest = PointOfInterest(id: 0, name: "Joe's Pizza", address: "7 Carmine St, New York, NY 10014, United States", pictures: ["joesPizza-1", "joesPizza-2", "joesPizza-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7306414, longitude: -74.0022))
    static let brooklynFlea: PointOfInterest = PointOfInterest(id: 1, name: "Brooklyn Flea", address: "80 Pearl St, Brooklyn, NY 11201, United States", pictures: ["brooklynFlea-1", "brooklynFlea-2", "brooklynFlea-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7026, longitude: -73.9877))
    static let highLine: PointOfInterest = PointOfInterest(id: 2, name: "The High Line", address: "New York, NY 10011, United States", pictures: ["highLine-1", "highLine-2", "highLine-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7480, longitude: -74.0048))
    static let flatironBuilding: PointOfInterest = PointOfInterest(id: 3, name: "Flatiron Building", address: "175 5th Ave, New York, NY 10010, United States", pictures: ["flatironBuilding-1", "flatironBuilding-2", "flatironBuilding-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7411, longitude: -73.9897))
    static let theOculus: PointOfInterest = PointOfInterest(id: 4, name: "The Oculus", address: "185 Greenwich St LL3110, New York, NY 10006, United States", pictures: ["theOculus-1", "theOculus-2", "theOculus-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7116, longitude: -74.0114))
    static let moma: PointOfInterest = PointOfInterest(id: 5, name: "The Museum of Modern Art", address: "11 W 53rd St, New York, NY 10019, United States", pictures: ["moma-1", "moma-2", "moma-3"], coordinate: CLLocationCoordinate2D(latitude: 40.7614, longitude: -73.9776))
    static let newYork: City = City(id: 0, name: "New York", pointsOfInterest: [joesPizza, brooklynFlea, highLine, flatironBuilding, theOculus, moma])
    
    //Amsterdam
    static let de9Straatjes: PointOfInterest = PointOfInterest(id: 0, name: "De 9 Straatjes", address: "Wolvenstraat 9, 1016 EM Amsterdam, Netherlands", pictures: ["de9Straatjes-1", "de9Straatjes-2", "de9Straatjes-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3702, longitude: 4.8861))
    static let vanGoghMuseum: PointOfInterest = PointOfInterest(id: 1, name: "Van Gogh Museum", address: "Museumplein 6, 1071 DJ Amsterdam, Netherlands", pictures: ["vanGoghMuseum-1","vanGoghMuseum-2","vanGoghMuseum-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3584, longitude: 4.8811))
    static let nieuweKerk: PointOfInterest = PointOfInterest(id: 2, name: "De Nieuwe Kerk", address: "De Dam, 1012 NL Amsterdam, Netherlands", pictures: ["nieuweKerk-1","nieuweKerk-2","nieuweKerk-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3739, longitude: 4.8918))
    static let stroopwafels: PointOfInterest = PointOfInterest(id: 3, name: "van Wonderen Stroopwafels", address: "Kalverstraat 190, 1012 XH Amsterdam, Netherlands", pictures: ["stroopwafels-1","stroopwafels-2","stroopwafels-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3679, longitude: 4.8916))
    static let bloemenmarkt: PointOfInterest = PointOfInterest(id: 4, name: "Bloemenmarkt", address: "Singel, 1012 DH Amsterdam, Netherlands", pictures: ["bloemenmarkt-1","bloemenmarkt-2","bloemenmarkt-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3668, longitude: 4.8913))
    static let anneFrank: PointOfInterest = PointOfInterest(id: 5, name: "Anne Frank House", address: "Westermarkt 20, 1016 GV Amsterdam, Netherlands", pictures: ["anneFrank-1","anneFrank-2","anneFrank-3"], coordinate: CLLocationCoordinate2D(latitude: 52.3752, longitude: 4.8840))
    static let amsterdam: City = City(id: 1, name: "Amsterdam", pointsOfInterest: [de9Straatjes, vanGoghMuseum, nieuweKerk, stroopwafels, bloemenmarkt, anneFrank])
    
    //London
    
    static let covent: PointOfInterest = PointOfInterest(id: 0, name: "Covent Garden", address: "Regal House, 14 James St, London WC2E 8BU, United Kingdom", pictures: ["covent-1","covent-2","covent-3"], coordinate: CLLocationCoordinate2D(latitude: 51.5117, longitude: 0.1240))
    
    static let greenwich: PointOfInterest = PointOfInterest(id: 1, name: "Greenwich Park", address: "London SE10 8QY, United Kingdom", pictures: ["greenwich-1","greenwich-2","greenwich-3"], coordinate: CLLocationCoordinate2D(latitude: 51.4769, longitude: 0.0015))
    
    static let chinatown: PointOfInterest = PointOfInterest(id: 2, name: "Chinatown", address: "London W1D 5QA, UK", pictures: ["chinatown-1","chinatown-2","chinatown-3"], coordinate: CLLocationCoordinate2D(latitude: 51.5118, longitude: 0.1311))
   
    static let tower: PointOfInterest = PointOfInterest(id: 3, name: "Tower of London", address: "London EC3N 4AB, United Kingdom", pictures: ["tower-1","tower-2","tower-3"], coordinate: CLLocationCoordinate2D(latitude: 51.5081, longitude: 0.0759))
    
    static let portobello: PointOfInterest = PointOfInterest(id: 4, name: "Portobello Road Market", address: "Portobello Rd, London W10 5TY, United Kingdom", pictures: ["portobello-1","portobello-2","portobello-3"], coordinate: CLLocationCoordinate2D(latitude: 51.5190, longitude: 0.2074))
    
    static let camden: PointOfInterest = PointOfInterest(id: 5, name: "Camden Town", address: "54-56 Camden Lock Pl, London NW1 8AF, United Kingdom", pictures: ["camden-1","camden-2","camden-3"], coordinate: CLLocationCoordinate2D(latitude: 51.5390, longitude: 0.1426))
        
    static let london: City = City(id: 2, name: "London", pointsOfInterest: [covent, greenwich, chinatown, tower, portobello, camden])
    
    static let cityList: [City] = [newYork, london, amsterdam]
}
