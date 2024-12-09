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
        NavigationStack {
            List {
                ForEach(lugares, id: \.self){ local in
                    NavigationLink(
                        destination: LugarView(nome: local),
                        label: {
                            HStack {
                                Image(local)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                Text(local)
                                    .multilineTextAlignment(.leading)
                                    .frame(alignment: .leading)
                            }
                        })
                    }
            }
            .navigationTitle("Lugares")
        }
    }
}



#Preview {
    ListaLugaresView()
}
