//
//  LinhaTabela.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct LinhaTabela: View {
	let numeroEsquerda: String
	let nomeEsquerda: String
	let esquerdaFezGol: Bool
	let esquerdaAmarelo: Bool
	var substituicao: Bool
	var numeroDireita: String
	var nomeDireita: String
	let direitaFezGol: Bool
	let direitaAmarelo: Bool
	let temFundo: Bool
	var corIcone: Color = .corVerdeBrasil
	

	var body: some View {
		HStack(spacing: 8) {

			HStack(spacing: 8) {
				Text(numeroEsquerda)
					.frame(width: 20, alignment: .leading)
				JogadorTabela(nomeJogador: nomeEsquerda, corFundo: corIcone, amarelo: esquerdaAmarelo, fezGol: esquerdaFezGol)

				Text(nomeEsquerda)
					.frame(maxWidth: 70, alignment: .leading)
					.lineLimit(2)
					.multilineTextAlignment(.leading)
					.fixedSize(horizontal: false, vertical: true)
			}
			.foregroundStyle(
				substituicao ? Color.corVerdeTabela : Color.white
			)
			.frame(maxWidth: .infinity, alignment: .leading)

			if substituicao {
				Image(systemName: "arrow.left.arrow.right")
					.symbolRenderingMode(.palette)
					.foregroundStyle(.corLaranja01, .corVerdeTabela)
					.frame(width: 30)

				HStack(spacing: 8) {
					Text(numeroDireita)
						.frame(width: 20, alignment: .leading)
					JogadorTabela(nomeJogador: nomeDireita, corFundo: corIcone, amarelo: direitaAmarelo, fezGol: direitaFezGol)

					Text(nomeDireita)
						.frame(maxWidth: 70, alignment: .leading)
						.lineLimit(2)
						.multilineTextAlignment(.leading)
						.fixedSize(horizontal: false, vertical: true)
				}
				.foregroundStyle(.corLaranja01)
				.frame(maxWidth: .infinity, alignment: .trailing)
			}
		}
		.font(.footnote)
		.frame(maxWidth: .infinity)
		.frame(height: 42)
		.padding(.horizontal, 12)
		.background {
			if temFundo {
				RoundedRectangle(cornerRadius: 5)
					.fill(.corBotaoFavoritar.opacity(0.1))
			}
		}
	}
}
#Preview {
	LinhaTabela(numeroEsquerda: "17", nomeEsquerda: "Fabinho", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "5", nomeDireita: "Casemiro", direitaFezGol: true, direitaAmarelo: true, temFundo: false)
}
