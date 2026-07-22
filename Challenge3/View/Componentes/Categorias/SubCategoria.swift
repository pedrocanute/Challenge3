//
//  SubCategoria.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct SubCategoria: View {
	let titulo: String
	let fonteTitulo: CGFloat = 20
	var ehSubtitulo: Bool = true
	
	var fonte: Font {
		if ehSubtitulo {
			return .subheadline
		} else {
			return .custom("Play-Bold", size: fonteTitulo, relativeTo: .title2)
		}
	}
	
	var body: some View {
		VStack{
			
			Text(titulo)
				.font(fonte)
				.foregroundStyle(ehSubtitulo ? Color.corSubtitulo : Color.white)
				.frame(maxWidth: .infinity, alignment: .leading)
				
			
			Divider()
				.frame(height: 1)
				.background(.corLinha)
				
				
		}
		.padding(.top, 14)
	}
}
#Preview {
	SubCategoria(titulo: "Corrida", ehSubtitulo: false)
}
