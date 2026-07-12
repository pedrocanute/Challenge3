//
//  Escalacao.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct Escalacao: View {
	@State var selecao = 0
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				SubCategoria(titulo: "Escalação Oficial", ehSubtitulo: false)
				
				Picker("Dados", selection: $selecao) {
					Text("Brasil")
						.tag(0)
					Text("Japão")
						.tag(1)
				}
				.pickerStyle(.segmented)
				.frame(width: 302)
				.padding(.bottom, 26)
				
				Group {
					switch selecao {
					case 0:
						EscalacaoBrasil()
					case 1:
						EscalacaoJapao()
					default:
						EscalacaoBrasil()
					}
				}
					
			}
		}
	}
}
#Preview {
	Escalacao()
}
