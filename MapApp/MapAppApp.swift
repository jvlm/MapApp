//
//  MapAppApp.swift
//  MapApp
//
//  Created by Joao Melo on 21/04/23.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = CityViewModel()
    
    var body: some Scene {
        WindowGroup {
            CityView()
                .environmentObject(vm)
        }
    }
}
