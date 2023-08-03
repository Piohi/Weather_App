//
//  HumidityView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 26.07.2023.
//

import SwiftUI


struct HumidityView: View {

    @StateObject private var viewModel = WeatherViewModel()

    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Image(systemName: SFSymbols.humidity.rawValue)
                Text("HUMIDITY")}
                .font(.footnote)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .padding(.leading, 10)
        Spacer()
            
            Text("\(Int(viewModel.weather.current.humidity)) %")
                .font(.system(size: 48))
                .bold()
                .foregroundColor(.white.opacity(0.75))
                
                .frame(maxWidth: .infinity, alignment: .leading)
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


struct HumidityView_Previews: PreviewProvider {
    static var previews: some View {
        HumidityView()
    }
}
