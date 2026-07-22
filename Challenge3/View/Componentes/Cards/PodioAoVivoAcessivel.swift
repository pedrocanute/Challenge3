//
//  PodioAoVivoAcessivel.swift
//  ScoreNow
//
//  Created by Pedro Canute on 22/07/26.
//

import SwiftUI

struct PodioAoVivoAcessivel: View {
	
	let posicao: Int
	let nome: String
	let construtor: String
	let pais: String
	
	var body: some View {
		
		HStack(alignment: .top, spacing: 12) {
			Text("\(posicao)")
				.font(.title2.bold())
				.frame(minWidth: 28, alignment: .leading)
			
			Image(nome)
				.resizable()
				.scaledToFill()
				.frame(width: 52, height: 52)
				.clipShape(Circle())
				.accessibilityHidden(true)
			
			VStack(alignment: .leading, spacing: 4) {
				Text(nome)
					.font(.title3.bold())
					.fixedSize(horizontal: false, vertical: true)
				
				Text(construtor)
					.font(.body)
					.foregroundStyle(.secondary)
					.fixedSize(horizontal: false, vertical: true)
				
				Text(pais)
					.font(.body)
					.foregroundStyle(.secondary)
					.fixedSize(horizontal: false, vertical: true)
			}
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}
}
#Preview {
	PodioAoVivoAcessivel(posicao: 1, nome: "G. Russel", construtor: "Mercedes", pais: "Reino Unido")
}
