import SwiftUI

struct LugarView7: View {
    
    @State private var isFavorited = false
    var nome: String
    
    var body: some View{
        NavigationStack{
            VStack{
                ScrollView{
                    
                    Color("primary").ignoresSafeArea()
                    
                    Image("foto")
                        .frame(maxWidth: .infinity, maxHeight: 25)
                    
                    Image(nome)
                        .frame(maxWidth: 250, maxHeight: 250)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 7)
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text("Igarapé do Quarenta")
                                .foregroundStyle(Color("secondary"))
                                .font(.largeTitle)
                            
                            Button(action: {
                                isFavorited.toggle()
                            }) {
                                Image(systemName: isFavorited ? "star.fill" : "star")
                                    .foregroundColor(isFavorited ? .yellow : .gray)
                                    .font(.largeTitle)
                            }
                        }
                        
                        HStack {
                            Text("Ponto histórico de Manaus")
                            Spacer()
                            Text("Amazonas")
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Sobre o Igarapé do 40")
                                .font(.title)
                        }
                        
                        Text("  Esse igarapé reflete o desafio de conciliar desenvolvimento urbano com preservação ambiental. Projetos de revitalização e despoluição têm sido implementados nos últimos anos, buscando devolver ao Igarapé do 40 sua função ecológica e melhorar a qualidade de vida das populações ao redor. Essas iniciativas incluem a construção de sistemas de saneamento, dragagem, reflorestamento das margens e conscientização ambiental da comunidade.")
                            .font(.body)
                        
                        Text("  Apesar das dificuldades, o Igarapé do 40 carrega grande significado cultural e social para Manaus. Ele é um exemplo da relação íntima que os moradores da cidade têm com os rios e igarapés, que são parte integrante da identidade amazônica. Sua recuperação é uma meta importante para tornar Manaus uma cidade mais sustentável e resiliente.")
                            .font(.body)
                        
                        Button {
                        } label: {
                            CustomButton(buttonText: "Visitei hoje")
                            
                        }
                        
                        
                    }.padding()
                }
            }
        }
    }
}



#Preview {
    LugarView7(nome: "Ponta Negra")
}
