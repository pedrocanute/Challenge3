//
//  CardJogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct CardJogos<Destino: View>:View {
	var aoVivo: Bool = false
	let titulo: String
	let paisEsquerda: String
	let paisDireita: String
	var horario: String = "16:00"
	let destino: () -> Destino
	
	@State var ativarHaptic = false
	
	var body: some View {
		NavigationLink{
			destino()
		} label:{
			
			ZStack (alignment: .trailing){
				VStack{
					Text(titulo)
						.font(.caption)
						.foregroundStyle(.corSubtitulo)
						.padding(.top, 8)
					
					HStack(spacing: 15){
						Bandeira(nomeSelecao: paisEsquerda)
						Divider()
							.frame(width: 1, height: 90)
							.background(.corLinha)
						Group {
							
							if aoVivo {
								
								VStack{
									Text("2 x 1")
										.font(.largeTitle)
										.fontWeight(.heavy)
										.foregroundStyle(.white)
									Relogio(segundosIniciais: 1542)
									
								}
							} else {
								Text(horario)
									.foregroundStyle(.white)
								
							}
						}
						.frame(width: 90, height: 90)
						
						Divider()
							.frame(width: 1, height: 90)
							.background(.corLinha)
						Bandeira(nomeSelecao: paisDireita)
						
					}
					.padding(.vertical, 5)
				}
				.frame(maxWidth: .infinity)
				Image(systemName: "chevron.compact.right")
					.font(.subheadline)
					.foregroundStyle(.corLinha)
					.padding(.trailing, 10)
			}
			.frame(maxWidth: .infinity)
			.frame(height: 140)
			.background(.corCard)
			.clipShape(RoundedRectangle(cornerRadius: 20))
			.shadow(color: .black.opacity(0.45), radius: 2, x: 0, y: 3)
			.padding(.bottom, 6)
		}
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
	}
}
#Preview {
	CardJogos(aoVivo: true, titulo: "Dezesseis avos de final", paisEsquerda: "Costa do Marfim", paisDireita: "Japão", horario: "20:00") { Copa()}
}
