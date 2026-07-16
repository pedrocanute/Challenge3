//
//  ColunaConstrutor.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct ColunaPTS: View {
	let pilotos: [InfoPiloto]
	var body: some View {
		VStack(alignment: .leading) {
			Text("PTS")
				.font(.caption)
				.foregroundStyle(.corSubtitulo)
			
			ForEach(pilotos) { piloto in
				Text("\(piloto.pontos)")
					.font(.subheadline)
					.frame(height: 45)
			}
		}
	}
}
#Preview {
	ColunaPTS(pilotos: [InfoPiloto(posicao: 1, nome: "M. Verstappen", construtor: "Red Bull R.", vitorias: 5, pontos: 171)])
}
