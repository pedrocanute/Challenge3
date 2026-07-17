//
//  Formula1.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//

import SwiftUI

struct Formula1: View {
	
	@State var favoritou = false
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			ScrollView {
				
				VStack(spacing: 15){
					IconeCategoria(nomeIcone: "F1", titulo: "Fórmula 1",tamanho: 80, cor: .white)
					SubCategoria(titulo: "Próximos Eventos", ehSubtitulo: false)
					CardEventoCorrida()
					
					SubCategoria(titulo: "Último Evento", ehSubtitulo: false)
					
					CardEstatisticaCorrida()
				}
				.padding(.horizontal, 24)
			}
		}
		.toolbar(.hidden, for: .tabBar)
		.toolbar{
			ToolbarItem(placement: .topBarTrailing) {
				Button {
					favoritou.toggle()
				} label: {
					Image(systemName: favoritou ? "bookmark.fill" : "bookmark")
						.foregroundStyle(favoritou ? Color.corFutebol : Color.white)
				}
			}
		}
	}
}
#Preview {
	Formula1()
}
