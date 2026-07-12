//
//  EscalacaoBrasil.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct EscalacaoBrasil: View {
	var body: some View {
		
		VStack (spacing: 8){
			ZStack{
			Image("campo")
				
				VStack(spacing: 60) {
					
					HStack(spacing: 40){
						Jogador(nomeJogador: "Vini Jr", numeroCamisa: "7", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "M. Cunha", numeroCamisa: "9", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "Rayan", numeroCamisa: "26", corFundo: .corVerdeBrasil)
						
					}
					
					
					HStack(spacing: 20){
						Jogador(nomeJogador: "L. Paquetá", numeroCamisa: "20", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "Casemiro", numeroCamisa: "5", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "B. Guimarães", numeroCamisa: "8", corFundo: .corVerdeBrasil)
						
					}
					
					
					HStack(spacing: 30){
						Jogador(nomeJogador: "D. Santos", numeroCamisa: "16", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "Gabriel", numeroCamisa: "3", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "Marquinhos", numeroCamisa: "4", corFundo: .corVerdeBrasil)
						Jogador(nomeJogador: "Danilo", numeroCamisa: "13", corFundo: .corVerdeBrasil)
						
					}
					
					Jogador(nomeJogador: "Alisson", numeroCamisa: "1", corFundo: .corVerdeBrasil)
					
				}
			}
			
			Text("Brasil 4-3-3")
			
			TabelaBancoBrasil()
		}
	}
}
#Preview {
	EscalacaoBrasil()
}
