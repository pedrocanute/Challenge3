//
//  IconeCategoria.swift
//  Challenge3
//
//  Created by Pedro Canute on 10/07/26.
//

import SwiftUI

struct IconeCategoria: View {
	let nomeIcone: String
	let titulo: String
	var tamanho: CGFloat = 40
	var personalizado: Bool = false
	
	var body: some View {
		VStack {
			Circle()
				.frame(width: 108, height: 107)
				.foregroundStyle(.corFutebol)
				.overlay {
					if personalizado {
						Image(nomeIcone)
							.resizable()
							.scaledToFit()
							.frame(width: tamanho, height: tamanho)
							.foregroundStyle(.corFundo)
					} else {
			
						Image(systemName: nomeIcone)
							.font(.system(size: 48))
							.foregroundStyle(.corFundo)
					}
				}
			
			Text(titulo)
				.font(.custom("Play-Bold", size: 24, relativeTo: .title))
				.foregroundStyle(.white)
				.padding(.top, 10)
			
		}
	}
}
#Preview {
	IconeCategoria(nomeIcone: "taça", titulo: "Copa do Mundo",tamanho: 65, personalizado: true)
}
