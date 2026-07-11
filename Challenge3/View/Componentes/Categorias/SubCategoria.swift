//
//  SubCategoria.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct SubCategoria: View {
	let titulo: String
	var ehSubtitulo: Bool = true
	var fonte: Font {
		if ehSubtitulo {
			return .subheadline
		} else {
			return .custom("Play-Bold", size: 20, relativeTo: .title2)
		}
	}
	
	var body: some View {
		VStack{
			
			Text(titulo)
				.font(fonte)
				.foregroundStyle(ehSubtitulo ? Color.corSubtitulo : Color.white)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 24)
			
			Divider()
				.frame(height: 1)
				.background(.corLinha)
				.padding(.horizontal, 24)
				
		}
		.padding(.top, 14)
		.padding(.bottom, 10)
	}
}
#Preview {
	SubCategoria(titulo: "Corrida", ehSubtitulo: false)
}
