//
//  MapView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 26.07.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    
    var coordinate: CLLocationCoordinate2D 
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        
        ZStack {
//            Text("Map temperature")
//                .font(.footnote)
//                .foregroundColor(.gray)
//                .offset(x: -17, y: 7)

             
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }.frame(width: 150, height: 150)
                .cornerRadius(10)
//                .padding()
        }
        .frame(width: 170, height: 170)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        
    }
        
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}
                    
            
             


struct MapView_Previews: PreviewProvider {
    @StateObject private var viewModel = WeatherViewModel()
    
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 55.75, longitude: 37.62))
    }
}
