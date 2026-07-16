//
//  SplashScreen.swift
//  ScoreNow
//
//  Created by Pedro Canute on 16/07/26.
//

import SwiftUI

struct SplashScreen: View {
	
	@State private var escalaLogo: CGFloat = 0.55
	@State private var opacidadeLogo: Double = 0
	@State private var deslocamentoLogo: CGFloat = 45
	@State private var rotacaoAnel: Double = -40
	@State private var escalaBrilho: CGFloat = 0.65
	@State private var opacidadeBrilho: Double = 0
	@State private var mostrarParticulas = false
	
	var body: some View {
		ZStack {
			Color.corVerdeLogo
				.ignoresSafeArea()
			
			
			Image("Logo")
				.resizable()
				.scaledToFit()
				.frame(maxWidth: 190)
				.scaleEffect(escalaLogo)
				.offset(y: deslocamentoLogo)
				.opacity(opacidadeLogo)
				.shadow(color: .black.opacity(0.18), radius: 18, x: 0, y: 10)
		}
		.onAppear {
			withAnimation(.spring(response: 0.9, dampingFraction: 0.6)) {
				escalaLogo = 0.5
				opacidadeLogo = 1
				deslocamentoLogo = 0
			}
		}
	}
}

#Preview {
	SplashScreen()
}
