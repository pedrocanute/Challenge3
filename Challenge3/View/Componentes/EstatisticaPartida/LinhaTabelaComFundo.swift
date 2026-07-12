//
//  LinhaTabela.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//
import SwiftUI

struct LinhaTabelaComFundo: View {
	var body: some View {
		HStack{
			Text("12")
				.font(.subheadline)
				.foregroundStyle(.white)
				.padding(.trailing, 11)
			Text("Weverton")
				.font(.subheadline)
				.foregroundStyle(.white)
			
		}
		.frame(maxWidth: .infinity, alignment: .leading)
		.frame(height: 29)
		.padding(.leading, 44)
		.background(
			RoundedRectangle(cornerRadius: 5)
				.frame(width: 337, height: 29)
				.foregroundStyle(.corBotaoFavoritar.opacity(0.1))
		)
	}
}
#Preview {
	LinhaTabelaComFundo()
}
