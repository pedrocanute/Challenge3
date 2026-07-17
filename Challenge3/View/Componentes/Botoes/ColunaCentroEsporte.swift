//
//  ColunaBotaoEsporte.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct ColunaCentroEsporte: View {
	var body: some View {
		VStack (spacing: 20){
			BotaoEsporte(titulo: "Futebol", icone: "Futebol", cor: .corFutebol) { Futebol () }
			BotaoEsporte(titulo: "Surf", icone: "Surf", cor: .corSurf) { Construcao() }
				
			BotaoEsporte(titulo: "Golfe", icone: "Golf", cor: .corFutebol) { Construcao() }
			BotaoEsporte(titulo: "Rugby", icone: "Rugbi", cor: .corRugbi) { Construcao() }
			
		}
	}
}
#Preview {
	ColunaCentroEsporte()
}
