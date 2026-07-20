//
//  Futebol.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct Futebol: View {
	
	let espacamentoAposCategoria: CGFloat = 55
	let tamanhoIconeDoBotao: CGFloat = 30
	
	var body: some View {
		
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			ScrollView {
				
				VStack{
					
					IconeCategoria(nomeIcone: "Futebol", titulo: "Futebol")
						.padding(.bottom, espacamentoAposCategoria)
					
					VStack(spacing: 11 ){
						
						BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026", tamanho: 35) { Copa() }
						
						BotaoLigas(icone: "Torneio", titulo: "Ligas e Torneios", tamanho: tamanhoIconeDoBotao) { Copa() }
						
						BotaoLigas(icone: "Times", titulo: "Times", tamanho: tamanhoIconeDoBotao) { Copa() }
					}
					
					Spacer()
				}
				.padding(.horizontal, 24)
			}
			.scrollBounceBehavior(.basedOnSize)
		}
	}
}
#Preview {
	Futebol()
}
