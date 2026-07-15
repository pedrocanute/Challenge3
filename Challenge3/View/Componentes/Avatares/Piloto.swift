//
//  Piloto.swift
//  Challenge3
//
//  Created by Pedro Canute on 02/07/26.
//

import SwiftUI

struct Piloto: View {
	
	let nomePiloto: String
	var podio: Bool = false
	let posicao: String
	var construtor: String = "Mercedes"
	var tempo: String = "1:26:37,979"
	
	let tamanhoPodio: CGFloat = 58
	let tamanhoTabela: CGFloat = 29
	
	var body: some View {
		if podio {
			VStack {
				Circle()
					.foregroundStyle(.clear)
					.frame(width: tamanhoPodio, height: tamanhoPodio)
					.background(
						Image(nomePiloto)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: tamanhoPodio, height: tamanhoPodio)
							.clipped()
					)
					.cornerRadius(58)
					.overlay(alignment: .topLeading){
						Text(posicao)
							.font(.title3)
							.foregroundStyle(.corFundo)
							.fontWeight(.medium)
							.background(
								Circle()
									.fill(.corSubtitulo)
									.frame(width: 25, height: 25)
							)
							.offset(x: -5)
						
					}
				Group{
					Text(nomePiloto)
						.font(.headline)
					Text(construtor)
						.font(.footnote)
					Text(tempo)
						.font(.footnote)
				}
				.foregroundStyle(.white)
			}
		} else {
			HStack {
				Text(posicao)
					.font(.headline)
					.foregroundStyle(.white)
					.padding(.trailing,17)
				
				Circle()
					.foregroundStyle(.clear)
					.frame(width: tamanhoTabela, height: tamanhoTabela)
					.background(
						Image(nomePiloto)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: tamanhoTabela, height: tamanhoTabela)
							.clipped()
					)
					.cornerRadius(58)
				Text(nomePiloto)
					.font(.headline)
					.foregroundStyle(.white)
			}
		}
	}
}
#Preview {
	Piloto(nomePiloto: "G. Russel", podio: true, posicao: "1", construtor: "Mercedes", tempo: "1:26:37,979")
}
