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
				
				BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026") { Jogos() }
				BotaoLigas(icone: "trofeu", titulo: "Ligas e Torneios", largura: 30, altura: 30) { Jogos() }
				BotaoLigas(icone: "brasao", titulo: "Times", largura: 30, altura: 30) { Jogos() }
				Spacer()
			}
		}
	}
}
#Preview {
	Futebol()
}
