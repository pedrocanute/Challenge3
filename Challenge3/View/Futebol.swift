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
				ZStack{
					Circle()
						.frame(maxWidth: .infinity, alignment: .center)
						.frame(width: 90, height: 90)
						.foregroundStyle(.white)
					Image(systemName: "soccerball.inverse")
						.font(.system(size:40))
						.foregroundStyle(.black)
						.preferredColorScheme(.dark)
				}
				Text("Futebol")
					.font(.custom("Play-Regular" ,size: 24))
					.padding(.bottom, 60)
					.padding(.top, 10)
					.fontWeight(.semibold)
				
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
