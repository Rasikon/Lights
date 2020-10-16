//
//  LightCircle.swift
//  Lights
//
//  Created by Rasikon on 16.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

struct LightCircle: View {
    var bright = 0.3
    let color: UIColor
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
            .opacity(bright)
    }
}

struct LightCircle_Previews: PreviewProvider {
    static var previews: some View {
        LightCircle(color: .red)
    }
}
