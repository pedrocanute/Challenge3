//
//  InfoPiloto.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import Foundation

struct InfoPiloto: Identifiable {
	let id = UUID()
	let posicao: Int
	let nome: String
	let construtor: String
	let vitorias: Int
	let pontos: Int
}
