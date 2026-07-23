//
//  ColunaPiloto.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct ColunaPiloto: View {
	let pilotos: [InfoPiloto]
	let alturaDaLinha: CGFloat = 45
	
	var body: some View {
		VStack(alignment: .leading){
			Text("Piloto")
				.font(.caption)
				.foregroundStyle(.corSubtitulo)
			
			ForEach(pilotos) { piloto in
				Piloto(nomePiloto: piloto.nome, posicao: String(piloto.posicao))
					.frame(height: alturaDaLinha)
			}
			
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}
}
#Preview {
	ColunaPiloto(pilotos: [InfoPiloto(posicao: 1, nome: "M. Verstappen", construtor: "Red Bull R.", vitorias: 5, pontos: 171)])
}
