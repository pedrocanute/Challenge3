//
//  TabelaBanco.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct TabelaBancoJapao: View {
	var body: some View {
		VStack{
			SubCategoria(titulo: "Banco", ehSubtitulo: true)
			
			LinhaTabela(numeroEsquerda: "12", nomeEsquerda: "K. Osako", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "23", nomeEsquerda: "T. Hayakawa", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "2", nomeEsquerda: "Y. Sugawara", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "10", nomeDireita: "R. Doan", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "4", nomeEsquerda: "K. Itakura", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "5", nomeEsquerda: "Y. Nagatomo", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "16", nomeEsquerda: "T. Watanabe", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "20", nomeEsquerda: "A. Seko", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "25", nomeEsquerda: "J. Suzuki", esquerdaFezGol: false, esquerdaAmarelo: true, substituicao: true, numeroDireita: "13", nomeDireita: "Nakamura", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "7", nomeEsquerda: "A. Tanaka", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "15", nomeDireita: "D. Kamada", direitaFezGol: false, direitaAmarelo: true, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "8", nomeEsquerda: "T. Kubo", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true,corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "17", nomeEsquerda: "Y. Suzuki", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "6", nomeEsquerda: "S. Machino", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "14", nomeDireita: "J. Ito", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "9", nomeEsquerda: "K. Goto", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "19", nomeEsquerda: "K. Ogawa", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "11", nomeDireita: "D. Maeda", direitaFezGol: false, direitaAmarelo: false, temFundo: true, corIcone: .white)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "26", nomeEsquerda: "K. Shiogai", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
			SubCategoria(titulo: "Treinador", ehSubtitulo: true)
			
			LinhaTabela(numeroEsquerda: "", nomeEsquerda: "H. Moriyasu", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false, corIcone: .white)
				.padding(.horizontal, 24)
			
		}
	}
}
#Preview {
	TabelaBancoJapao()
}
