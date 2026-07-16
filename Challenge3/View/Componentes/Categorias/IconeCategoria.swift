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
	var tamanho: CGFloat = 55
	var cor: Color = .corFutebol
	
	var body: some View {
		VStack {
			Circle()
				.frame(width: 108, height: 107)
				.foregroundStyle(cor)
				.overlay {
				
						Image(nomeIcone)
							.resizable()
							.scaledToFit()
							.frame(width: tamanho, height: tamanho)
							.foregroundStyle(.corFundo)
				
				}
			
			Text(titulo)
				.font(.custom("Play-Bold", size: 24, relativeTo: .title))
				.foregroundStyle(.white)
				.padding(.top, 10)
			
		}
	}
}
#Preview {
	IconeCategoria(nomeIcone: "Futebol", titulo: "Futebol",tamanho: 55)
}
