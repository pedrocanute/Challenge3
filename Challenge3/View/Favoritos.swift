//
//  Favoritos.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Favoritos: View {
	
	@State var mostrarSheet = false
	@State var selecao = 0
	
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			
			ScrollView{
				
				VStack{
					Text("Favoritos")
						.font(.custom("Play-Bold", size:28, relativeTo: .title))
						.frame(maxWidth: .infinity, alignment: .leading)
					
					Picker("Eventos", selection: $selecao) {
						Text("Ao Vivo")
							.tag(0)
						Text("Recentes")
							.tag(1)
						Text("Próximos")
							.tag(2)
					}
					.pickerStyle(.segmented)
					
					switch selecao {
					case 0:
						AoVivo()
					case 1:
						Recentes()
					case 2:
						Proximos()
					default:
						AoVivo()
					}
				}
				.padding(.horizontal, 24)
			}
			.scrollEdgeEffectStyle(.soft, for: .top)
		}
		.toolbar {
			ToolbarItem(placement: .topBarTrailing) {
				Button {
					mostrarSheet = true
				} label: {
					Image(systemName: "pencil")
						.foregroundStyle(.white)
				}
			}
		}
		.sheet(isPresented: $mostrarSheet) {
			ListaFavoritos()
		}
	}
}
#Preview {
	Favoritos()
}
