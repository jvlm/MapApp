//
//  CityView.swift
//  MapApp
//
//  Created by Joao Melo on 23/04/23.
//

import SwiftUI
import MapKit


struct CityView: View {
    
    @EnvironmentObject private var vm: CityViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.currentCoordinate)
                .ignoresSafeArea()
            Map(coordinateRegion: $vm.currentCoordinate, annotationItems: vm.selectedCity.pointsOfInterest) { item in
                            MapAnnotation(coordinate: item.coordinate){
                                Button {
                                    vm.selectedPointOfInterest = item
                                    vm.showModal = true
                                } label: {
                                    Image(systemName: "mappin.circle.fill")
                                        .renderingMode(.original)
                                        .font(.title)
                                                             //.foregroundColor(.red)
                                                             //.tint(.red)
                                }
                            }
                        }
            VStack(spacing: 0){
                header
                    .padding()
                Spacer()
                if (vm.showModal){
                    PointOfInterestView(pointOfInterest: vm.selectedPointOfInterest)
                        .shadow(color: Color.black.opacity(0.3), radius: 15)
                        .padding()
                        .padding(.bottom, 20)
                        .gesture(
                            DragGesture()
                                .onEnded(){ _ in
                                    withAnimation(){
                                        vm.showModal = false
                                    }
                                }
                        )
                }
            }
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
            .environmentObject(CityViewModel())
    }
}

extension CityView {
    private var header: some View {
        VStack{
            Button(action: vm.toggleCityList){
                Text(vm.selectedCity.name)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.selectedCity)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showCityMenu ? 180 : 0))
                    }
            }
            
            if vm.showCityMenu {
                CityListView()
                    .frame(maxHeight: 185)
            }
            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3),radius: 20, x: 0, y:15)
    }
}
