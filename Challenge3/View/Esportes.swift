//
//  Esportes.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//

import SwiftUI

struct Esportes: View {
	var body: some View {
		ZStack{
			Color.corFundo
				.ignoresSafeArea()
			
			VStack (spacing: 80){
				Text("Esportes")
					.font(.custom("Play-Bold", size: 35, relativeTo: .largeTitle))
					.frame(maxWidth: .infinity, alignment: .leading)
					.padding(.leading, 24)
				
				HStack (spacing: 40) {
					ColunaEsquerdaEsporte()
					ColunaCentroEsporte()
						.offset(y:-45)
					ColunaDireitaEsporte()
				}
				.frame (maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 24)
				.preferredColorScheme(.dark)
			}
		}
	}
}
#Preview {
	Esportes()
}
