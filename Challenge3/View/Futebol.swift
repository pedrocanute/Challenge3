//
//  Futebol.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct Futebol: View {
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			
			VStack{
				
				IconeCategoria(nomeIcone: "soccerball.inverse", titulo: "Futebol")
					.padding(.bottom, 70)
				
				BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026") { Copa() }
				BotaoLigas(icone: "trofeu", titulo: "Ligas e Torneios", tamanho: 30) { Copa() }
				BotaoLigas(icone: "brasao", titulo: "Times", tamanho: 30) { Copa() }
				Spacer()
			}
		}
	}
}
#Preview {
	Futebol()
}
