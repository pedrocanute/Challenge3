//
//  BarraPosse.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct BarraPosse: View {

	@Environment(\.dynamicTypeSize) var dynamicTypeSize

	let posseBrasil = 69.0
	let posseJapao = 31.0

	var body: some View {
		Group {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				barra
			}
		}
		.accessibilityElement(children: .ignore)
		.accessibilityLabel("Posse de bola. Brasil: 69 por cento. Japão: 31 por cento.")
	}

	var barra: some View {
		ZStack {
			Capsule()
				.fill(.corVermelhoJapao)
				.stroke(.corFundo, lineWidth: 4)
				.overlay(alignment: .leading){
					Capsule()
						.fill(.corVerdeBrasil)
						.stroke(.corFundo, lineWidth: 4)
						.frame(width: 255)
						
				}

			HStack {
				Text("69%")
					.font(.title3)

				Spacer()

				Text("Posse de Bola")
					.font(.subheadline)

				Spacer()

				Text("31%")
					.font(.title3)
			}
			.foregroundStyle(.white)
			.padding(.horizontal, 24)
		}
		.frame(height: 45)
	}

	var layoutAcessivel: some View {
		VStack(alignment: .leading, spacing: 12) {
			Text("Posse de bola")
				.font(.headline)

			HStack {
				Text("Brasil")

				Spacer()

				Text("69%")
					.font(.headline)
			}
			ProgressView(value: 69, total: 100)
				.tint(.corVerdeBrasil)
			
			HStack {
				Text("Japão")

				Spacer()

				Text("31%")
					.font(.headline)
			}
			ProgressView(value: 31, total: 100)
				.tint(.corVermelhoJapao)
			
		}
		.foregroundStyle(.white)
	}
}

#Preview {
	BarraPosse()
		.padding()
		.background(.corFundo)
}
