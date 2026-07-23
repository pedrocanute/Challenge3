//
//  CardEventoCorrida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//
import SwiftUI

struct CardEventoCorrida: View {

	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				cardAcessivel
			} else {
				cardPadrao
			}
		}
		.frame(maxWidth: .infinity)
		.background(.corCard)
		.clipShape(RoundedRectangle(cornerRadius: 20))
	}
	
	var cardPadrao: some View {
		
		VStack {
			
			Group {
				
				VStack {
					Text("Grande Prêmio - Grã-Bretanha")
						.font(.headline)
					
					Text("Grande Prêmio - Grã-Bretanha")
						.font(.footnote)
						.foregroundStyle(.corSubtitulo)
				}
				.padding(.top, 8)
				
				linhaEvento(titulo: "Classificação do Sprint", data: "03", horario: "12:30", divisoria: true)
				linhaEvento(titulo: "Sprint", data: "04", horario: "08:00", divisoria: true)
				
				linhaEvento(titulo: "Classificação", data: "04", horario: "12:00", divisoria: true)
				
				linhaEvento(titulo: "Corrida", data: "05", horario: "11:00", divisoria: false)
					.padding(.bottom, 8)
				
			}
			.foregroundStyle(.white)
			.frame(maxWidth: .infinity)
			.padding(.horizontal, 16)
			.padding(.vertical, 8)
		}
	}
	
	var cardAcessivel: some View {
		
		VStack(alignment: .leading, spacing: 20) {
			
			Text("Próximos Eventos")
				.font(.title2.bold())
				.fixedSize(horizontal: false, vertical: true)
			
			Divider()
			
			VStack(alignment: .leading, spacing: 6) {
				Text("Grande Prêmio - Grã-Bretanha")
					.font(.headline)
					.fixedSize(horizontal: false, vertical: true)
				
				Text("Grande Prêmio - Grã-Bretanha")
					.font(.body)
					.foregroundStyle(.corSubtitulo)
					.fixedSize(horizontal: false, vertical: true)
			}
			
			VStack(alignment: .leading, spacing: 16) {
				linhaEventoAcessivel(titulo: "Classificação do Sprint", data: "03/06/26", horario: "12:30", divisoria: true)
				
				linhaEventoAcessivel(titulo: "Sprint", data: "04/06/26", horario: "08:00", divisoria: true)
				
				linhaEventoAcessivel(titulo: "Classificação", data: "04/06/26", horario: "12:00", divisoria: true)
				
				linhaEventoAcessivel(titulo: "Corrida", data: "05/06/26", horario: "11:00", divisoria: false)
			}
			
		}
		.foregroundStyle(.white)
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(20)
	}
	
	func linhaEvento(titulo: String, data: String, horario: String, divisoria: Bool) -> some View {
		
		VStack {
			
			HStack {
				Text(titulo)
				
				Spacer()
				
				VStack {
					Text("\(data)/06/26")
					Text(horario)
				}
			}
			
			if divisoria {
				Divider()
					.frame(maxWidth: .infinity)
					.frame(height: 1)
					.background(.corLinha)
			}
		}
	}
	
	func linhaEventoAcessivel(titulo: String, data: String, horario: String, divisoria: Bool) -> some View {
		
		VStack(alignment: .leading, spacing: 12) {
			
			Text(titulo)
				.font(.headline)
				.fixedSize(horizontal: false, vertical: true)
			
			HStack(alignment: .firstTextBaseline, spacing: 8) {
				Image(systemName: "calendar")
					.foregroundStyle(.corSubtitulo)
					.accessibilityHidden(true)
				
				Text(data)
					.font(.body)
					.fixedSize(horizontal: false, vertical: true)
			}
			
			HStack(alignment: .firstTextBaseline, spacing: 8) {
				Image(systemName: "clock")
					.foregroundStyle(.corSubtitulo)
					.accessibilityHidden(true)
				
				Text(horario)
					.font(.body.bold())
					.fixedSize(horizontal: false, vertical: true)
			}
			
			if divisoria {
				Divider()
					.background(.corLinha)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.accessibilityElement(children: .combine)
		.accessibilityLabel("\(titulo), dia \(data), às \(horario).")
	}

}
#Preview {
	CardEventoCorrida()
}
