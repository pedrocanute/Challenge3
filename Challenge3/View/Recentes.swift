//
//  Recentes.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//

import SwiftUI

struct Recentes: View {
	var body: some View {
		VStack(spacing: 10) {
			SubCategoria(titulo: "Futebol", ehSubtitulo: false)
			
			Text("Copa do Mundo 2026 - 28/07/26")
				.font(.subheadline)
				.foregroundStyle(.corSubtitulo)
				.frame(maxWidth: .infinity, alignment: .leading)
			CardJogos(titulo: "Dezesseis avos de final", aoVivo: false, paisEsquerda: "África do Sul", paisDireita: "Canadá",finalizada: true){Construcao()}
		}
	}
}
#Preview {
	Recentes()
}
