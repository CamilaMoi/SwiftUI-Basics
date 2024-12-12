import SwiftUI

struct LugarView3: View {
    
    var body: some View{
        VStack{
            
            ScrollView{
                
//                1º
                Color("primary").ignoresSafeArea()
                
                Image("foto")
//                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 25)
                
                Image("Igarapé do 40")
                    .frame(maxWidth: 250, maxHeight: 250)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
//                    .shadow(radius: 200)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Igarapé do Quarenta")
                            .foregroundStyle(Color("secondary"))
                        
                            .font(.largeTitle)
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
//                        .lineSpacing(50.8)
                        .font(.body)
                    
                    Text("  Apesar das dificuldades, o Igarapé do 40 carrega grande significado cultural e social para Manaus. Ele é um exemplo da relação íntima que os moradores da cidade têm com os rios e igarapés, que são parte integrante da identidade amazônica. Sua recuperação é uma meta importante para tornar Manaus uma cidade mais sustentável e resiliente.")
                        .font(.body)
                    
                }.padding()
            }
            .ignoresSafeArea()
        }
    }
}



#Preview {
    LugarView3()
}
