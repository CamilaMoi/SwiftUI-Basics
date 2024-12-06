//
//  SwiftUIView.swift
//  SwiftUI-Basics
//
//  Created by Camila Moi on 06/12/24.
//

import SwiftUI
struct ListaLugaresView: View {
    let lugares: [String] = [
        "Igarapé do 40",
        "Ponta Negra",
        "Teatro Amazonas",
        "Encontro das Águas"
    ]
    
    var body: some View {
        NavigationView {
            List(lugares, id: \.self) { lugar in
                HStack {
                    Image("foto 3")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(lugar)
                        .multilineTextAlignment(.leading)
                        .frame(alignment: .leading)
                }
            }
            .navigationTitle("Lugares")
        }
    }
}



#Preview {
    ListaLugaresView()
}
