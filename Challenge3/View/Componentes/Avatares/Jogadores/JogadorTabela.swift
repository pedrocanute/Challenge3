//
//  Jogador.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct JogadorTabela: View {
	let nomeJogador: String
	let corFundo: Color
	let amarelo: Bool
	let fezGol: Bool
	var body: some View {
		VStack{
			Image(nomeJogador)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 34, height: 34)
				.background(corFundo)
				.clipShape(Circle())
				.overlay(alignment: .topTrailing) {
					if fezGol {
						Image(systemName: "soccerball.inverse")
							.font(.caption)
							.foregroundStyle(.green)
							.offset(x: -27, y: -3)
					}
				}
			
				.overlay(alignment: .topTrailing) {
					if amarelo {
						Image(systemName: "rectangle.portrait.fill")
							.font(.caption2)
							.foregroundStyle(.yellow)
							.offset(x: 4, y: -3)
					}
				}
		
		}
	}
}
#Preview {
	JogadorTabela(nomeJogador: "Gabriel", corFundo: .corVerdeBrasil, amarelo: true, fezGol: true)
}
