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
		VStack(spacing: 4){
			
			Image(nomeSelecao)
				.resizable()
				.scaledToFill()
				.frame(width: 50, height: 50)
				.clipShape(Circle())
			
			Text(nomeSelecao)
				.font(.footnote)
				.foregroundStyle(.white)
				.multilineTextAlignment(.center)
				.lineLimit(2)
				.frame(width: 90, height: 34, alignment: .top)
		}
		.frame(width: 70, height: 90)
		.padding(.top, 10)
	}
}
#Preview {
	Bandeira(nomeSelecao: "Costa do Marfim")
}
