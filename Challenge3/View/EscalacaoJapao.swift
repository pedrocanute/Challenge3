//
//  EscalacaoBrasil.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct EscalacaoJapao: View {
	var body: some View {
		ZStack{
			Image("campo")
			VStack(spacing: 35){
				
				Jogador(nomeJogador: "A. Ueda", numeroCamisa: "18", corFundo: .white)
				
				HStack(spacing: 40){
					Jogador(nomeJogador: "D. Maeda", numeroCamisa: "11", corFundo: .white)
					Jogador(nomeJogador: "J. Ito", numeroCamisa: "14", corFundo: .white)
					
				}
				.padding(.trailing, 10)
				
				
				HStack(spacing: 20){
					Jogador(nomeJogador: "Nakamura", numeroCamisa: "13", corFundo: .white)
					Jogador(nomeJogador: "D. Kamada", numeroCamisa: "15", corFundo: .white)
					Jogador(nomeJogador: "K. Sano", numeroCamisa: "24", corFundo: .white)
					Jogador(nomeJogador: "R. Doan", numeroCamisa: "10", corFundo: .white)
					
				}
				
				
				HStack(spacing: 30){
					Jogador(nomeJogador: "H. Ito", numeroCamisa: "21", corFundo: .white)
					Jogador(nomeJogador: "S. Taniguchi", numeroCamisa: "3", corFundo: .white)
					Jogador(nomeJogador: "T. Tomiyasu", numeroCamisa: "22", corFundo: .white)
					
				}
				.padding(.leading, 30)
				
				Jogador(nomeJogador: "Z. Suzuki", numeroCamisa: "1", corFundo: .white)
				
				
				
			}
		}
		Text("Japão 3-4-2-1")
		
		TabelaBancoJapao()
	}
}
#Preview {
	EscalacaoJapao()
}
