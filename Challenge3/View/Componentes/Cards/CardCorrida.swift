//
//  CardCorrida.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//
import SwiftUI

struct CardCorrida<Destino: View>: View {
	let destino: () -> Destino
	
	var body: some View {
		
	}
}
#Preview {
	CardCorrida() { Futebol()}
}
