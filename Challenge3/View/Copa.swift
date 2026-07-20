//
//  Jogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Copa: View {
	@State var favoritou: Bool = false
	let margem: CGFloat = 24
	let distanciaSubtituloAoCard: CGFloat = 8
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			
			ScrollView {
				VStack{
					
					IconeCategoria(nomeIcone: "taça", titulo: "Copa do Mundo 2026", tamanho: 60)
					
					Button {
						
					} label: {
						
						Text("Ver Chaveamento")
							.font(.headline)
							.foregroundStyle(.white)
							.padding(.horizontal, 16)
							.padding(.vertical, 10)
					}
					.buttonStyle(.glass)
					
					SubCategoria(titulo: "Ao Vivo")
						.padding(.bottom, distanciaSubtituloAoCard)
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão"){ Estatistica()}
					
					SubCategoria(titulo: "Ainda hoje")
						.padding(.bottom, distanciaSubtituloAoCard)
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Espanha", paisDireita: "Áustria"){ Construcao()}
						
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Portugal", paisDireita: "Croácia", horario: "20:00"){ Construcao()}
						
					SubCategoria(titulo: "Amanhã")
						.padding(.bottom, distanciaSubtituloAoCard)
					
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "Costa do Marfim", paisDireita: "Noruega", horario: "14:00"){ Construcao()}
						
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "França", paisDireita: "Suécia", horario: "16:00"){ Construcao()}
						
					CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "México", paisDireita: "Equador", horario: "20:00"){ Construcao()}
				}
				.padding(.horizontal, margem)
			}
			.scrollEdgeEffectStyle(.soft, for: .top)
		}
		.toolbar {
			ToolbarItem(placement: .topBarTrailing) {
				Button {
					favoritou.toggle()
				} label: {
					Image(systemName: favoritou ?  "bookmark.fill" : "bookmark")
						.foregroundStyle(favoritou ? Color.corVerdeLogo : Color.white)
				}
				.accessibilityLabel(favoritou ? "Remover dos Favoritos" : "Adicionar aos Favoritos")
				.accessibilityValue(favoritou ? "Favoritado" : "Não favoritado")
			}
		}
	}
}
#Preview {
	Copa()
}
