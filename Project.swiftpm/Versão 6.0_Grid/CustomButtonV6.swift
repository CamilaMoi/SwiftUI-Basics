//
//  CustomButton.swift
//  SwiftUI-Basics
//
//  Created by Italo Guilherme Monte on 09/12/24.
//

import SwiftUI

struct CustomButtonV6: View {
    
    let buttonText: String
    
    var body: some View {
       
        Text(buttonText)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        
    }
}
