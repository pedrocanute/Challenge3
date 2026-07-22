//
//  CardCorrida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//
import SwiftUI

struct CardCorrida<Destino: View>: View {
	
	let destino: () -> Destino
	let alturaDivisoria: CGFloat = 125
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	@State var ativarHaptic = false
	
	var body: some View {
		NavigationLink {
			destino()
		} label: {
			Group {
				if dynamicTypeSize.isAccessibilitySize {
					cardAcessivel
				} else {
					cardPadrao
				}
			}
			.frame(maxWidth: .infinity)
			.padding(12)
			.background(.corCard)
			.clipShape(RoundedRectangle(cornerRadius: 20))
			.shadow(color: .black.opacity(0.45), radius: 2, x: 0, y: 3)
			.padding(.bottom, 12)
		}
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
		.accessibilityElement(children: .combine)
		.accessibilityLabel("Grande Prêmio da Áustria. Corrida ao vivo, volta 26 de 71.Primeiro lugar, G. Russel, Mercedes. Segundo lugar, M. Verstappen, Red Bull Racing. Terceiro lugar, K. Antonelli, Mercedes.")
		.accessibilityHint("Toque duas vezes para ver os detalhes da corrida")
	}
	
	var cardPadrao: some View {
		ZStack(alignment: .trailing) {
			VStack(spacing: 25) {
				Text("Grande Prêmio - Áustria")
					.font(.subheadline)
				
				HStack(spacing: 16) {
					Piloto(nomePiloto: "G. Russel", podio: true, aoVivo: true, posicao: "1")
						.frame(maxWidth: .infinity)
						.fixedSize(horizontal: true, vertical: false)
					
					Divider()
						.frame(width: 1, height: alturaDivisoria)
						.background(.corLinha)
					
					Piloto(nomePiloto: "M. Verstappen", podio: true, aoVivo: true, posicao: "2", construtor: "Red Bull R.", pais: "Países Baixos")
						.frame(maxWidth: .infinity)
						.fixedSize(horizontal: true, vertical: false)
					
					Divider()
						.frame(width: 1, height: alturaDivisoria)
						.background(.corLinha)
					
					Piloto(nomePiloto: "K. Antonelli",podio: true,aoVivo: true,posicao: "3",pais: "Itália")
						.frame(maxWidth: .infinity)
						.fixedSize(horizontal: true, vertical: false)
				}
				.padding(.horizontal, 16)
				
				Text("26/71 voltas")
					.font(.subheadline)
					.foregroundStyle(.corSubtitulo)
			}
			.frame(maxWidth: .infinity)
			
			Image(systemName: "chevron.compact.right")
				.foregroundStyle(.corLinha)
				.accessibilityHidden(true)
		}
	}
	
	var cardAcessivel: some View {
		VStack(alignment: .leading, spacing: 20) {
			HStack(alignment: .firstTextBaseline, spacing: 12) {
				Text("Grande Prêmio - Áustria")
					.font(.headline)
				
				Spacer()
				
				Image(systemName: "chevron.right")
					.font(.body.bold())
					.foregroundStyle(.corLinha)
					.accessibilityHidden(true)
			}
			
			Divider()
			
			VStack(alignment: .leading, spacing: 16) {
				PodioAoVivoAcessivel(posicao: 1, nome: "G. Russel", construtor: "Mercedes", pais: "Reino Unido")
				
				PodioAoVivoAcessivel(posicao: 2,nome: "M. Verstappen", construtor: "Red Bull R.", pais: "Países Baixos")
				
				PodioAoVivoAcessivel(posicao: 3, nome: "K. Antonelli", construtor: "Mercedes", pais: "Itália")
			}
			
			Divider()
			
			HStack(alignment: .firstTextBaseline, spacing: 8) {
				Image(systemName: "circle.fill")
					.font(.caption2)
					.foregroundStyle(.red)
					.accessibilityHidden(true)
				
				Text("Ao vivo")
					.font(.headline)
					.foregroundStyle(.red)
				
				Text("26 de 71 voltas")
					.font(.headline)
					.foregroundStyle(.corSubtitulo)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(20)
	}
}
#Preview {
	CardCorrida() { Formula1()}
}
