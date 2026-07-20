//
//  Escalacao.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct Escalacao: View {
	@State var selecao = 0
	let tamanhoPicker: CGFloat = 302
	let distanciaPickerAoConteudo: CGFloat = 10
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				SubCategoria(titulo: "Escalação Oficial", ehSubtitulo: false)
					.padding(.bottom, 10)
				
				Picker("Dados", selection: $selecao) {
					Text("Brasil")
						.tag(0)
					Text("Japão")
						.tag(1)
				}
				.pickerStyle(.segmented)
				.frame(width: tamanhoPicker)
				.padding(.bottom, distanciaPickerAoConteudo)
				
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
	ScrollView{
		Escalacao()
	}
}
