//
//  AoVivo.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//

import SwiftUI

struct AoVivo:View {
	var body: some View {
		VStack(spacing: 16){
			SubCategoria(titulo: "Futebol", ehSubtitulo: false)
			
			Text("Copa do Mundo 2026")
				.font(.subheadline)
				.foregroundStyle(.corSubtitulo)
				.frame(maxWidth: .infinity, alignment: .leading)
			CardJogos(titulo: "Ao vivo - Dezesseis avos de final", aoVivo: true, paisEsquerda: "Brasil", paisDireita: "Japão", horario: "") { Estatistica()}
			SubCategoria(titulo: "Corrida", ehSubtitulo: false)
			Text("Fórmula 1")
				.font(.subheadline)
				.foregroundStyle(.corSubtitulo)
				.frame(maxWidth: .infinity, alignment: .leading)
			CardCorrida(){ Formula1()}

		}
	}
}
#Preview {
	AoVivo()
}
