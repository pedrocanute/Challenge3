//
//  Bandeira.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct Bandeira: View {
	let nomeSelecao: String
	var body: some View {
		VStack{
			
			Circle()
				.foregroundStyle(.clear)
				.frame(width: 50, height: 50)
				.background(
					Image(nomeSelecao)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.clipped()
				)
				.cornerRadius(100)
			Text(nomeSelecao)
				.font(.footnote)
				.foregroundStyle(.white)
		}
			
	}
}
#Preview {
	Bandeira(nomeSelecao: "Brasil")
}
