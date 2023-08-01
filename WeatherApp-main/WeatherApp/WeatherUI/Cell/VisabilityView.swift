//
//  VisabilityView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 28.07.2023.
//

import SwiftUI

struct VisabilityView: View {
    
    @StateObject private var viewModel = WeatherViewModel()

    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Image(systemName: SFSymbols.eye.rawValue)
                Text("VISABILITY")}
                .font(.footnote)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .padding(.leading, 10)
        Spacer()
            
            Text("\(Int(viewModel.weather.current.visKM)) Km")
                .font(.system(size: 48))
                .bold()
                .foregroundColor(.white.opacity(0.75))
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 0)
                .padding()
            
            
        
            
            
            
            
            
        }
        
        .frame(width: 170, height: 170)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .onAppear {
            viewModel.fetchCurrentWeather()
        }
        
    }
}


struct VisabilityView_Previews: PreviewProvider {
    static var previews: some View {
        VisabilityView()
    }
}
