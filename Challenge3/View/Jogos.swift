//
//  Jogos.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Jogos: View {
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			VStack{
				
				Text("Dezesseis avos de final")
					.font(.subheadline)
					.foregroundStyle(.corSubtitulo)
					.frame(maxWidth: .infinity, alignment: .leading)
					.padding(.leading, 12)
				
				Divider()
					.frame(height: 1)
					.background(.corLinha)
					.padding(.horizontal, 12)
					.padding(.bottom, 10)
				
				CardJogos(paisEsquerda: "Brasil", paisDireita: "Japão"){ Jogos()}
					.padding(.horizontal, 12)
			}
		}
	}
}
#Preview {
	Jogos()
}
