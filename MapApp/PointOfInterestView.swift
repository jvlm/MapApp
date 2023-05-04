//
//  PointOfInterestView.swift
//  MapApp
//
//  Created by Joao Melo on 23/04/23.
//

import SwiftUI

struct PointOfInterestView: View {
    
    let pointOfInterest: PointOfInterest
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0){
            ScrollView(.horizontal, showsIndicators: false){
                HStack() {
                    if let picture = pointOfInterest.pictures.first {
                        Image(picture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 175, height: 175)
                            .cornerRadius(5)
                        
                    }
                    if let picture = pointOfInterest.pictures[1] {
                        Image(picture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 175, height: 175)
                            .cornerRadius(5)
                        
                    }
                    if let picture = pointOfInterest.pictures[2] {
                        Image(picture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 175, height: 175)
                            .cornerRadius(5)
                        
                    }
                }
            }
            .cornerRadius(5)
            
            VStack(alignment: .leading){
                Text(pointOfInterest.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(pointOfInterest.address)
                    .font(.subheadline)
            }
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
        )
    }
}

struct PointOfInterestView_Previews: PreviewProvider {
    static var previews: some View {
        PointOfInterestView(pointOfInterest: CityDataService.cityList.first!.pointsOfInterest.first!)
    }
}
