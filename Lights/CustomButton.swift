//
//  CustomButton.swift
//  Lights
//
//  Created by Rasikon on 16.10.2020.
//  Copyright © 2020 Rasikon. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var text = "START"
    let color: Color?
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 120, height: 50)
                .foregroundColor(color)
            Text(text)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(color: .none)
    }
}
