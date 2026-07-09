//
//  BotaoLigas.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct BotaoLigas<Destino: View>:View {
	let icone: String
	let titulo: String
	var largura: CGFloat = 40
	var altura: CGFloat = 40
	let destino: () -> Destino
	
	@State var ativarHaptic = false
	
	var body: some View {
		NavigationLink {
			destino()
		} label: {
			ZStack{
				Rectangle()
					.foregroundStyle(.corCard)
					.frame(width: 354, height: 80)
					.cornerRadius(35)
					.preferredColorScheme(.dark)
				HStack{
					ZStack{
						Circle()
							.frame(width: 61, height: 59)
							.foregroundStyle(.white)
						Image(icone)
							.resizable()
							.scaledToFit()
							.frame(width: largura, height: altura)
					}
					
					Text(titulo)
						.padding(.leading, 20)
						.font(.system(size:18))
						.fontWeight(.regular)
				}
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 35)
				
			}
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
	BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026", largura: 40, altura: 40) { Jogos()}
}
