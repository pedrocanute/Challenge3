//
//  Construcao.swift
//  ScoreNow
//
//  Created by Pedro Canute on 12/07/26.
//

import SwiftUI

struct Construcao: View {
	@State var ativarHaptic: Bool = false
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				
				Text("Tela indisponível. Confira a tela disponível abaixo")
					.font(.title3)
					.frame(width: 250)
					.multilineTextAlignment(.center)
				
				BotaoEsporte(titulo: "Futebol", icone: "Futebol", cor: .corFutebol) { Futebol()}
				
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
	Construcao()
}
