//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Matthew Collyer on 2021-11-30.
//

import SwiftUI

struct ContentView: View {
    
    @State var temperatureInCelcius = 0
    
    
    
    var body: some View {
        VStack{
            
            Slider(value: $temperatureInCelcius, in: 0.0...100.0, label: {
                Text("Temperature")
            },
                   minimumValueLabel: {
                Text("-50.0")
            },
                   
                   maximumValueLabel: {
                Text("50.0")
            })
            
            
            HStack {
                Spacer()
                Text("\(String(format: "%.0f", temperatureInCelcius))")
                    .font(.title)
                    .bold()
                Spacer()
            }
            
            
        }
        .navigationTitle("Temperature Converter")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
