//
//  Esportes.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Esportes: View {
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	let fonteTitulo: CGFloat = 35
	let margem: CGFloat = 24
	let offsetColunaCentro: CGFloat = -45
	
	var body: some View {
		ZStack {
			Color.corFundo
				.ignoresSafeArea()
			
			ScrollView {
				conteudo
			}
		}
	}
	
	var conteudo: some View {
		VStack(spacing: dynamicTypeSize.isAccessibilitySize ? 20 : 80) {
			Text("Esportes")
				.font(.custom("Play-Bold", size: fonteTitulo, relativeTo: .largeTitle))
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.horizontal, margem)
			
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.padding(.vertical, margem)
	}
	
	var layoutPadrao: some View {
		HStack(spacing: 40) {
			ColunaEsquerdaEsporte()
			
			ColunaCentroEsporte()
				.offset(y: offsetColunaCentro)
			
			ColunaDireitaEsporte()
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.padding(.horizontal, margem)
	}
	
	var layoutAcessivel: some View {
		VStack(spacing: 16) {
			ColunaCentroEsporte()
			ColunaEsquerdaEsporte()
			ColunaDireitaEsporte()
		}
		.padding(.horizontal, margem)
	}
}
#Preview {
	Esportes()
}
