//
//  SettingsView.swift
//  WeatherApp
//
//  Created by Anton Godunov on 13.07.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isOn: Bool = false
    @State private var isOnTwo: Bool = false
    @State private var isOnThree: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image.light
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 75)
                        .cornerRadius(20)
                    
                    Toggle("Light", isOn: $isOn)
                        .toggleStyle(CheckboxToggleStyle())
                }
                
                VStack {
                    Image.dark
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 75)
                        .cornerRadius(20)
                    
                    Toggle("Dark", isOn: $isOnTwo)
                        .toggleStyle(CheckboxToggleStyle())
                }
                
                VStack {
                    Image.system
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 75)
                        .cornerRadius(20)
                    
                    Toggle("System", isOn: $isOnThree)
                        .toggleStyle(CheckboxToggleStyle())
                }
            }
            
            Spacer()
            
            Text("App version 1.0")
                .foregroundColor(.gray)
                .font(.footnote)
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingsView_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
