//
//  Bandeira.swift
//  Challenge3
//
//  Created by Pedro Canute on 09/07/26.
//

import SwiftUI

struct Bandeira: View {
	let nomeSelecao: String
	var ehCorrida: Bool = false
	let tamanhoCirculoCorrida: CGFloat = 19
	let tamanhoCirculoCopa: CGFloat = 50
	
	var body: some View {
		if ehCorrida {
			Image(nomeSelecao)
				.resizable()
				.scaledToFill()
				.frame(width: tamanhoCirculoCorrida, height: tamanhoCirculoCorrida)
				.clipShape(Circle())
		} else {
			VStack(spacing: 4){
				
				Image(nomeSelecao)
					.resizable()
					.scaledToFill()
					.frame(width: tamanhoCirculoCopa, height: tamanhoCirculoCopa)
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
}
#Preview {
	Bandeira(nomeSelecao: "Costa do Marfim", ehCorrida: true)
}
