//
//  Estatistica.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct Estatistica: View {

	let fonteTitulo: CGFloat = 28
	let margem: CGFloat = 24
	@State var selecao = 0
	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	var body: some View {
		ZStack {
			Color.corFundo
				.ignoresSafeArea()

			ScrollView {
				VStack(spacing: dynamicTypeSize.isAccessibilitySize ? 28 : 20) {

					VStack(spacing: 8){
						
						Text("Ao Vivo")
							.font(.custom("Play-Bold", size: fonteTitulo, relativeTo: .title))
							.frame(maxWidth: .infinity, alignment: .leading)
							.accessibilityAddTraits(.isHeader)
						
						Text("Dezesseis avos de final")
							.font(.subheadline)
							.foregroundStyle(.corSubtitulo)
							.frame(maxWidth: .infinity, alignment: .leading)
					}
					.padding(.bottom,20)

					BotaoComInfo(paisEsquerda: "Brasil", paisDireita: "Japão")

					Picker("Dados da partida", selection: $selecao) {
						Text("Resumo")
							.tag(0)

						Text("Escalação")
							.tag(1)
					}
					.pickerStyle(.segmented)
					.frame(maxWidth: .infinity)

					Group {
						switch selecao {
						case 0:
							ResumoPartida()

						case 1:
							Escalacao()

						default:
							ResumoPartida()
						}
					}
				}
				.padding(.horizontal, margem)
				.padding(.vertical, 20)
			}
			.scrollEdgeEffectStyle(.soft, for: .top)
		}
		.toolbar(.hidden, for: .tabBar)
	}
}
#Preview {
	Estatistica()
}
