//
//  SwiftUIView.swift
//  SwiftUI-Basics
//
//  Created by Camila Moi on 06/12/24.
//

import SwiftUI

struct ListaLugaresView6: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let lugares: [String] = [
        "Igarapé do 40",
        "Ponta Negra",
        "Teatro Amazonas",
        "Encontro das Águas"
    ]
    
    var body: some View {
        NavigationStack { 
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(lugares, id: \.self) { local in
//                        NavigationLink {
//                            LugarView2(numberOfVisits: $numberOfVisits, nome: local)
//                        } label: {
                            VStack {
                                Image(local)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120) // Dimensões fixas
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                                Text(local)
                                    .font(.headline)
                                    .foregroundStyle(Color(.gray))
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 4)
                            }
                            .padding()
                            .frame(width: 140, height: 180) // Tamanho fixo para todos os itens
                            .background(Color(.gray).opacity(0.1))
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.3), radius: 4, x: 0, y: 2)
//                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Lugares") // Define o título da navegação
        }
    }
}

#Preview {
    ListaLugaresView2()
}
