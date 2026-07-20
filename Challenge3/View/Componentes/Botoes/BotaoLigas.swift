//
//  BotaoLigas.swift
//  Challenge3
//
//  Created by Pedro Canute on 30/06/26.
//
import SwiftUI

struct BotaoLigas<Destino: View>:View {
	let icone: String
	let titulo: String
	var tamanho: CGFloat = 40
	var corFundo: Color = .corFutebol
	let destino: () -> Destino
	let tamanhoCirculo: CGFloat = 61
	let tamanhoEspacamentoFundoBotao: CGFloat = 10
	let alturaBotao: CGFloat = 80
	@State var ativarHaptic = false
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		NavigationLink {
			destino()
		} label: {
			if dynamicTypeSize.isAccessibilitySize {
				layoutAcessivel
			} else {
				layoutPadrao
			}
		}
		.accessibilityLabel(titulo)
		.simultaneousGesture(
			TapGesture().onEnded {
				ativarHaptic.toggle()
			}
		)
		.sensoryFeedback(.selection, trigger: ativarHaptic)
		.buttonStyle(.plain)
		
	}
	var layoutPadrao: some View {
		
		HStack{
			ZStack {
				Circle()
					.fill(.corFutebol)
				
				Image(icone)
					.resizable()
					.scaledToFit()
					.frame(width: tamanho, height: tamanho)
					.accessibilityHidden(true)
			}
			.frame(width: tamanhoCirculo, height: tamanhoCirculo)
			
			Text(titulo)
				.padding(.leading, 12)
				.font(.headline)
				.fontWeight(.regular)
			
		}
		.padding(tamanhoEspacamentoFundoBotao)
		.padding(.leading, 8)
		.frame(maxWidth: .infinity, alignment: .leading)
		.frame(height: alturaBotao)
		.background(
			Rectangle()
				.foregroundStyle(.corCard)
				.frame(maxWidth: .infinity)
				.cornerRadius(35)
				.overlay(alignment: .trailing){
					Image(systemName: "chevron.compact.right")
						.accessibilityHidden(true)
						.padding(.trailing)
						.foregroundStyle(.corLinha)
				}
		)
	}
	
	var layoutAcessivel: some View {
		VStack {
			ZStack {
				Circle()
					.fill(.corFutebol)
				
				Image(icone)
					.resizable()
					.scaledToFit()
					.frame(width: tamanho, height: tamanho)
					.accessibilityHidden(true)
			}
			.frame(width: tamanhoCirculo, height: tamanhoCirculo)
			
			Text(titulo)
				.font(.headline)
				.fontWeight(.regular)
				.multilineTextAlignment(.center)
				.fixedSize(horizontal: false, vertical: true)
				.padding(.horizontal, 32)
			
		}
		.padding(tamanhoEspacamentoFundoBotao)
		.frame(maxWidth: .infinity)
		.background(
			RoundedRectangle(cornerRadius: 35)
				.fill(.corCard)
				.overlay(alignment: .trailing) {
					Image(systemName: "chevron.compact.right")
						.foregroundStyle(.corLinha)
						.padding(.trailing, 16)
						.accessibilityHidden(true)
				}
		)
	}
}

#Preview {
	BotaoLigas(icone: "taça", titulo: "Copa do Mundo 2026", tamanho: 40) { Copa()}
}
