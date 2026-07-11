//
//  Relogio.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct Relogio: View {
	let segundosIniciais: Int
	
	@State var inicio = Date()
	
	var body: some View {
		TimelineView(.periodic(from: .now, by: 1)) { contexto in
			let segundosDecorridos = Int(contexto.date.timeIntervalSince(inicio))
			let tempoTotal = segundosIniciais + segundosDecorridos
			
			Text(formatarTempo(tempoTotal))
				.font(.footnote)
				.foregroundStyle(.white)
				.monospacedDigit()
		}
	}
	
	func formatarTempo(_ totalSegundos: Int) -> String {
		let minutos = totalSegundos / 60
		let segundos = totalSegundos % 60
		
		return String(format: "%02d:%02d", minutos, segundos)
	}
}
#Preview {
	Relogio(segundosIniciais: 300)
}

