//
//  SwiftUIView.swift
//  SwiftUI-Basics
//
//  Created by Camila Moi on 06/12/24.
//

import SwiftUI

struct ListaLugaresView2: View {
    
    let lugares: [String] = [
        "Igarapé do 40",
        "Ponta Negra",
        "Teatro Amazonas",
        "Encontro das Águas"
    ]
    
    @State var numberOfVisits = 0
    
    var body: some View {
        VStack{
            List {
                ForEach(lugares, id: \.self){ local in
                    HStack {
                        Image(local)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(local)
                            .multilineTextAlignment(.leading)
                            .frame(alignment: .leading)
                    }
                    
                }
                
            }
            Text("Número de Visitas: \(numberOfVisits)")
                .font(.largeTitle)
                .bold()
        }
    }
}



#Preview {
    ListaLugaresView2()
}
