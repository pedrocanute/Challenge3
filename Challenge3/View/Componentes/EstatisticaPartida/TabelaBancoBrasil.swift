//
//  TabelaBanco.swift
//  ScoreNow
//
//  Created by Pedro Canute on 11/07/26.
//

import SwiftUI

struct TabelaBancoBrasil: View {
	var body: some View {
		VStack{
			SubCategoria(titulo: "Banco", ehSubtitulo: true)
			
			LinhaTabela(numeroEsquerda: "12", nomeEsquerda: "Weverton", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "23", nomeEsquerda: "Ederson", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "6", nomeEsquerda: "A. Sandro", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "14", nomeEsquerda: "G. Bremer", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "15", nomeEsquerda: "L. Pereira", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "24", nomeEsquerda: "R. Ibanez", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "2", nomeEsquerda: "E. Silva", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "17", nomeEsquerda: "Fabinho", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "5", nomeDireita: "Casemiro", direitaFezGol: true, direitaAmarelo: true, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "18", nomeEsquerda: "Danilo", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "8", nomeDireita: "B. Guimarães", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "10", nomeEsquerda: "Neymar", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "19", nomeEsquerda: "Endrick", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: true, numeroDireita: "20", nomeDireita: "L. Paquetá", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "21", nomeEsquerda: "L. Henrique", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "22", nomeEsquerda: "G. Martinelli", esquerdaFezGol: true, esquerdaAmarelo: false, substituicao: true, numeroDireita: "9", nomeDireita: "M. Cunha", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
			LinhaTabela(numeroEsquerda: "25", nomeEsquerda: "I. Thiago", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: true)
				.padding(.horizontal, 24)
			
			SubCategoria(titulo: "Treinador", ehSubtitulo: true)
			
			LinhaTabela(numeroEsquerda: "", nomeEsquerda: "C. Ancelotti", esquerdaFezGol: false, esquerdaAmarelo: false, substituicao: false, numeroDireita: "", nomeDireita: "", direitaFezGol: false, direitaAmarelo: false, temFundo: false)
				.padding(.horizontal, 24)
			
		}
	}
}
#Preview {
	TabelaBancoBrasil()
}
