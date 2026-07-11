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
	
	var body: some View {
		VStack {
			Circle()
				.frame(maxWidth: 108, maxHeight: 107)
				.foregroundStyle(.corFutebol)
				.overlay(
					Image(systemName: "soccerball.inverse")
						.font(.system(size: 48))
						.foregroundStyle(.corFundo)
				)
			Text(titulo)
				.font(.custom("Play-Regular", size: 24, relativeTo: .title))
				.foregroundStyle(.white)
				.padding(.top, 10)
			
		}
	}
}
#Preview {
	IconeCategoria(nomeIcone: "soccerball.inverse", titulo: "Futebol")
}
