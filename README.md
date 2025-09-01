# SwiftUI Basics

> Um guia rápido e prático para aprender/ensinar os fundamentos de SwiftUI — com exemplos mínimos, arquitetura leve (MVVM), acessibilidade e boas práticas.

## Visão geral

Este repositório reúne componentes e telas simples que cobrem os blocos essenciais do **SwiftUI**:

* **Views** e ciclo de vida
* **State/Binding/ObservedObject/EnvironmentObject**
* **Navegação** com `NavigationStack`
* **Listas** e células reutilizáveis
* **Arquitetura**: MVVM leve (View + ViewModel)
* **Networking** básico (REST/JSON) com `URLSession` e `Codable`
* **Persistência** simples (UserDefaults / SwiftData opcional)
* **Acessibilidade** (VoiceOver, Dynamic Type, contraste)

> Objetivo: código claro para copiar/colar, entender e adaptar — ideal para quem está começando ou montando workshops.

---

## 🧱 Requisitos

* **Xcode** 15+
* **iOS** 16+ (alvo mínimo recomendado)
* **Swift** 5.9+

> Se você estiver em versões diferentes, a maior parte dos exemplos ainda funciona; ajuste anotações conforme necessário.

---

## ▶️ Como rodar

1. **Clone** o repositório.
2. Abra `SwiftUIBasics.xcodeproj` (ou `.xcworkspace`, se houver dependências).
3. Selecione um **simulador** (ex.: iPhone 15) e pressione **⌘R**.

> Se aparecer erro de assinatura (Signing), selecione o target → **Signing & Capabilities** → defina um Team.

---

## ✅ Boas práticas

* **Views pequenas** e compostas: cada arquivo com uma responsabilidade.
* **Estado previsível**: `@State` para local, `ObservableObject` para compartilhado.
* **Preview**s: adicione `#Preview` para cada View.
* **Separação** de camadas: View ↔ ViewModel ↔ Serviços (quando houver rede/dados).
* **Erros** sempre com mensagem amigável ao usuário.

---

## 🤝 Contribuindo

1. Crie uma **branch**: `git checkout -b feature/minha-melhoria`
2. **Commit** descritivo: `feat: adiciona exemplo de NavigationStack`
3. **Pull Request** com contexto (prints/curto vídeo são bem-vindos)

> Siga o padrão dos diretórios e mantenha exemplos **mínimos e didáticos**.

---

## 📚 Referências úteis

* Documentação Apple Developer — *SwiftUI*
* HIG (Human Interface Guidelines) — *Acessibilidade e iOS*
* *App Architecture* (padrões MVVM em apps iOS)
