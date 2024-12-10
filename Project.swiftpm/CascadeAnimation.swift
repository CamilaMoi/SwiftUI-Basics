//
//  CascadeAnimation.swift
//  SwiftUI-Basics
//
//  Created by Joseph Pereira on 09/12/24.
//

import SwiftUI

struct CascadeAnimation: View {
    @State var cascade: [String] = []
    @State var cascadeIndex = 0
    @State var cascadeTimer: Timer?
    
    private func animateImages(for images: [String], index: Binding<Int>) -> Timer{
        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            index.wrappedValue += 1
            if index.wrappedValue >= images.count {
                index.wrappedValue = 0
            }
        }
        return timer
    }
    
    /// Função para adicionar texturas com um prefixo
    private func addSprites(lastIndex: Int, prefix: String) -> [String] {
        (0...lastIndex).map { "\(prefix)\($0)" }
    }
    
    var body: some View {
        Image(cascade.isEmpty ? "Placeholder" : cascade[cascadeIndex])
            .resizable()
            .frame(width: 100, height: 100)
            .onAppear {
                self.cascade = addSprites(lastIndex: 6, prefix: "cascade")
                cascadeTimer = animateImages(for: cascade, index: $cascadeIndex)
            }
            .onDisappear{
                cascadeTimer?.invalidate()
                cascadeIndex = 0
            }
    }
}

#Preview {
    CascadeAnimation()
}
