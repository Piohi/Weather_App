//
//  CheckboxToggleStyle.swift
//  WeatherApp
//
//  Created by Anton Godunov on 20.07.2023.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label
        
            ZStack{
                Circle()
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: 25, height: 25)
                    .overlay {
                        Image(systemName: configuration.isOn ? "checkmark" : "")
                    }
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
                Circle()
                    .fill(configuration.isOn ? .blue : .clear)
                    .frame(width: 25, height: 25)
                    .overlay {
                        Image(systemName: configuration.isOn ? "checkmark" : "")
                    }
                    .onTapGesture {
                        configuration.isOn.toggle()
                    }
                
            }
            
        }
        
    }
}
