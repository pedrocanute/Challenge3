//
//  CardJogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct CardJogos<Destino: View>:View {
	let paisEsquerda: String
	let paisDireita: String
	let destino: () -> Destino
	
	@State var ativarHaptic = false
	
	var body: some View {
		NavigationLink{
			destino()
		} label:{
			
			ZStack (alignment: .trailing){
				VStack{
					Text("Dezesseis avos de final")
						.font(.subheadline)
						.foregroundStyle(.corSubtitulo)
						.padding(.bottom, 2)
					
					HStack(spacing: 25){
						Bandeira(nomeSelecao: paisEsquerda)
						Divider()
							.frame(width: 1, height: 73)
							.background(.corLinha)
						Text("2 x 1")
							.font(.largeTitle)
							.fontWeight(.heavy)
						Divider()
							.frame(width: 1, height: 73)
							.background(.corLinha)
						Bandeira(nomeSelecao: paisDireita)
						
					}
					.padding(.bottom, 5)
				}
				.frame(maxWidth: .infinity)
				Image(systemName: "chevron.compact.right")
					.font(.subheadline)
					.foregroundStyle(.corLinha)
					.padding(.trailing, 10)
			}
			.frame(maxWidth: .infinity, maxHeight: 130)
			.background(.corCard)
			.clipShape(RoundedRectangle(cornerRadius: 20))
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
	CardJogos(paisEsquerda: "Brasil", paisDireita: "Japão") { Jogos()}
}
