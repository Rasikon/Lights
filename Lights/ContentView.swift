//
//  ContentView.swift
//  Lights
//
//  Created by Rasikon on 16.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var lightButton = CustomButton(color:.yellow)
    @State private var redCircle = LightCircle(color: .red)
    @State private var yellowCircle = LightCircle(color: .yellow)
    @State private var greenCircle = LightCircle(color: .green)
    
    private let lightIsOff = 0.3
    private let lightIsOn = 1.0
    
    var body: some View {
        ZStack {
            Color(.gray)
            
            VStack {
                redCircle
                yellowCircle.padding()
                greenCircle
                Spacer()
                
                Button(action: startButtonPressed, label: { lightButton } )
            }
            .padding()
        }
    }
    
    private func startButtonPressed(){
        lightButton.text = "NEXT"
        
        switch currentLight {
        case .red:
            greenCircle.bright = lightIsOff
            redCircle.bright = lightIsOn
            currentLight = .yellow
        case .yellow:
            redCircle.bright = lightIsOff
            yellowCircle.bright = lightIsOn
            currentLight = .green
        case .green:
            greenCircle.bright = lightIsOn
            yellowCircle.bright = lightIsOff
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
