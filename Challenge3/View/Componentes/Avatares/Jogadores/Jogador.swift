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
	let tamanhoCirculo: CGFloat = 34
	let offsetNumeroCamisa: CGFloat = -18
	var body: some View {
		VStack{
			Image(nomeJogador)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.background(corFundo)
				.clipShape(Circle())
				.frame(width: tamanhoCirculo, height: tamanhoCirculo)
				.overlay(alignment: .topLeading) {
					Text(numeroCamisa)
						.font(.subheadline)
						.foregroundStyle(.white)
						.offset(x: offsetNumeroCamisa)
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
