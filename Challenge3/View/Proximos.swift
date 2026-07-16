//
//  Proximos.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//

import SwiftUI

struct Proximos: View {
	var body: some View {
		VStack(spacing: 10){
			SubCategoria(titulo: "Futebol", ehSubtitulo: false)
			
			Text("Copa do Mundo 2026")
				.font(.subheadline)
				.foregroundStyle(.corSubtitulo)
				.frame(maxWidth: .infinity, alignment: .leading)
			
			
			
			
			CardJogos(titulo: "Hoje - Dezesseis avos de final", aoVivo: false, paisEsquerda: "Espanha", paisDireita: "Áustria"){ Construcao()}
			
			CardJogos(titulo: "Hoje - Dezesseis avos de final", aoVivo: false, paisEsquerda: "Portugal", paisDireita: "Croácia",horario: "20:00"){ Construcao()}
			
			CardJogos(titulo: "Amanhã - Dezesseis avos de final", aoVivo: false, paisEsquerda: "Costa do Marfim", paisDireita: "Noruega",horario: "14:00"){ Construcao()}
			
			CardJogos(titulo: "Amanhã - Dezesseis avos de final", aoVivo: false, paisEsquerda: "França", paisDireita: "Suécia",horario: "16:00"){ Construcao()}
			
			CardJogos(titulo: "Amanhã - Dezesseis avos de final", aoVivo: false, paisEsquerda: "México", paisDireita: "Equador",horario: "20:00"){ Construcao()}
	
		}
	}
}
#Preview {
	ScrollView{
		
		Proximos()
	}
}
