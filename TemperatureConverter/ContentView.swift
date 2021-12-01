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
            // Celsius
            HStack {
                Text("Celsius")
                    .font(.title2.bold())
                
                Spacer()
            }
            
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
            
                .padding()
            
            // Fahrenheit
            HStack {
                Text("Fahrenheit")
                    .font(.title2.bold())
                
                Spacer()
            }
 
            Text(String(format: "%.1f", degreeFahrenheit))
                .font(.title2.bold())
    
                .padding()
            
            if degreeCelsius >= -50.0 && degreeCelsius < -20.0 {
                Text("It's freezing outside! 🥶")
            } else if degreeCelsius >= -20.0 && degreeCelsius < 0.0 {
                Text("Dress warmly!")
            } else if degreeCelsius >= 0.0 && degreeCelsius < 10.0 {
                Text("Need a coat!")
            } else if degreeCelsius >= 10.0 && degreeCelsius < 20.0 {
                Text("Not very cold, not very hot... Perfect!")
            } else if degreeCelsius >= 20.0 && degreeCelsius < 30.0 {
                Text("Warm weather! Wear thin layers.")
            } else if degreeCelsius >= 30.0 && degreeCelsius <= 50.0 {
                Text("Never go out! It's too hot. 🥵")
            }
            
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
