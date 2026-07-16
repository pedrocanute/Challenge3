//
//  LinhaTabelaCorrida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct LinhaTabelaCorrida: View {
	let piloto: InfoPiloto
	
	let fundo: Bool
	
	var body: some View {
		HStack(spacing: 8){
			
			Piloto(nomePiloto: piloto.nome, posicao: String(piloto.posicao))
				.frame(width: 180, alignment: .leading)
			
			Text(piloto.construtor)
				.frame(width: 80, alignment: .leading)
			Text("\(piloto.vitorias)")
				.frame(width: 30, alignment: .center)
			Text("\(piloto.pontos)")
				.frame(width: 40, alignment: .trailing)
			
			
		}
		.font(.subheadline)
		.fontWeight(.regular)
		.frame(maxWidth: .infinity, alignment: .leading)
		.frame(height: 45)
		.padding(.horizontal, 12)
		.background {
			if fundo {
				RoundedRectangle(cornerRadius: 5)
					.fill(.corBotaoFavoritar.opacity(0.1))
			}
		}
	}
}
#Preview {
	LinhaTabelaCorrida(piloto: InfoPiloto(posicao: 22, nome: "M. Verstappen", construtor: "Red Bull. R", vitorias: 0, pontos: 0) ,fundo: true)
}
