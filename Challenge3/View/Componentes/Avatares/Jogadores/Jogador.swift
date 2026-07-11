//
//  Jogador.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct Jogador: View {
	let nomeJogador: String
	let numeroCamisa: String
	let corFundo: Color
	var body: some View {
		VStack{
			Image(nomeJogador)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.background(corFundo)
				.clipShape(Circle())
				.frame(width: 34, height: 34)
				.overlay(alignment: .topLeading) {
					Text(numeroCamisa)
						.font(.subheadline)
						.foregroundStyle(.white)
						.offset(x: -18)
				}
			Text(nomeJogador)
				.font(.footnote)
				.foregroundStyle(.white)
			
		}
	}
}
#Preview {
	Jogador(nomeJogador: "Gabriel", numeroCamisa: "3", corFundo: .corVerdeBrasil)
}
