//
//  SwiftUIView.swift
//  SwiftUI-Basics
//
//  Created by Camila Moi on 06/12/24.
//

import SwiftUI

struct ListaLugaresView2_2: View {
    
    let lugares: [String] = [
        "Igarapé do 40",
        "Ponta Negra",
        "Teatro Amazonas",
        "Encontro das Águas"
    ]
    
    @State var numberOfVisits = 0
    
    var body: some View {
        NavigationStack {
            
            VStack{
                List {
                    ForEach(lugares, id: \.self){ local in
                        NavigationLink {
                            LugarView2_2(numberOfVisits: $numberOfVisits, nome: local)
                        } label: {
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
                    
                }
                Text("Número de Visitas: \(numberOfVisits)")
                    .font(.largeTitle)
                    .bold()
            }
        }
        
    }
}



#Preview {
    ListaLugaresView2()
}
