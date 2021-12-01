//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Eunbi Shin on 2021-11-30.
//

import SwiftUI

struct ContentView: View {
    // Stored Property
    @State var degreeCelsius = 0.0
    
    // Computed Property
    var degreeFahrenheit: Double {
        return (degreeCelsius * 9/5) + 32
    }
    
    var body: some View {
        VStack {
            Text("Celsius")
                .font(.title2.bold())
            
            Slider(value: $degreeCelsius,
                   in: -50.0...50.0,
                   label: {
                Text("Celsius")
            },
                   minimumValueLabel: {
                Text("-50")
            },
                   maximumValueLabel: {
                Text("50")
            })
            
            Text(String(format: "%.1f", degreeCelsius))
                .font(.title2.bold())
            
            Spacer()
      
        }
            .padding()
            .navigationTitle("Temperature Converter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
