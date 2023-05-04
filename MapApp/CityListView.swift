//
//  CityListView.swift
//  MapApp
//
//  Created by Joao Melo on 23/04/23.
//

import SwiftUI

struct CityListView: View {
    
    @EnvironmentObject private var vm: CityViewModel
    
    var body: some View {
        List{
            ForEach(vm.cities){ city in
                Button {
                    vm.selectCity(city: city)
                } label: {
                    Text(city.name)
                }
            }
            .font(.headline)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            .listRowBackground(Color.clear)
        }
        .listStyle(PlainListStyle())
        //.frame(maxHeight: 185)
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView()
            .environmentObject(CityViewModel())
    }
}
