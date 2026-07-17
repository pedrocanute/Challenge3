//
//  Untitled.swift
//  ScoreNow
//
//  Created by Pedro Canute on 15/07/26.
//

import SwiftUI

struct CategoriaFavoritos: Identifiable {
	let id = UUID()
	let nome: String
	var itens: [ItemFavorito]
}

struct ItemFavorito: Identifiable {
	let id = UUID()
	let nome: String
	var favoritado: Bool
}

struct ListaFavoritos: View {
	
	@State var categorias = [
		CategoriaFavoritos(nome: "Futebol", itens: [
			ItemFavorito(nome: "Copa do Mundo 2026", favoritado: true),
			ItemFavorito(nome: "Champions League", favoritado: false),
			ItemFavorito(nome: "Premier League", favoritado: false),
			ItemFavorito(nome: "Brasileirão", favoritado: false),
			ItemFavorito(nome: "La Liga", favoritado: false),
			ItemFavorito(nome: "Bundesliga", favoritado: false),
			ItemFavorito(nome: "Copa do Brasil", favoritado: false),
			ItemFavorito(nome: "Sul-Americana", favoritado: false),
			ItemFavorito(nome: "Libertadores", favoritado: false)
		]),
		
		CategoriaFavoritos(nome: "Corrida", itens: [
			ItemFavorito(nome: "Fórmula 1", favoritado: true),
			ItemFavorito(nome: "Fórmula 2", favoritado: false),
			ItemFavorito(nome: "Fórmula 3", favoritado: false),
			ItemFavorito(nome: "Fórmula E", favoritado: false),
			ItemFavorito(nome: "IndyCar", favoritado: false),
			ItemFavorito(nome: "Rally (WRC)", favoritado: false),
			ItemFavorito(nome: "MotoGP", favoritado: false),
			ItemFavorito(nome: "NASCAR", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Vôlei", itens: [
			ItemFavorito(nome: "Liga das Nações", favoritado: false),
			ItemFavorito(nome: "Campeonato Mundial", favoritado: false),
			ItemFavorito(nome: "Olimpíadas", favoritado: false),
			ItemFavorito(nome: "Superliga Masculina", favoritado: false),
			ItemFavorito(nome: "Superliga Feminina", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Boxe", itens: [
			ItemFavorito(nome: "Pesos Pesados", favoritado: false),
			ItemFavorito(nome: "Pesos Meio-Pesados", favoritado: false),
			ItemFavorito(nome: "Pesos Médio", favoritado: false),
			ItemFavorito(nome: "Pesos Leve", favoritado: false),
			ItemFavorito(nome: "WBA", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Futebol Americano", itens: [
			ItemFavorito(nome: "NFL", favoritado: false),
			ItemFavorito(nome: "NCAA Football", favoritado: false),
			ItemFavorito(nome: "CFL", favoritado: false),
			ItemFavorito(nome: "UFL", favoritado: false),
			ItemFavorito(nome: "Super Bowl", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "MMA", itens: [
			ItemFavorito(nome: "UFC", favoritado: false),
			ItemFavorito(nome: "PFL", favoritado: false),
			ItemFavorito(nome: "Bellator", favoritado: false),
			ItemFavorito(nome: "ONE Championship", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Basquete", itens: [
			ItemFavorito(nome: "NBA", favoritado: false),
			ItemFavorito(nome: "WNBA", favoritado: false),
			ItemFavorito(nome: "NBB", favoritado: false),
			ItemFavorito(nome: "Euroliga", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Golfe", itens: [
			ItemFavorito(nome: "PGA Tour", favoritado: false),
			ItemFavorito(nome: "LIV Golf", favoritado: false),
			ItemFavorito(nome: "Masters Tournament", favoritado: false),
			ItemFavorito(nome: "U.S. Open", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Tênis", itens: [
			ItemFavorito(nome: "Australian Open", favoritado: false),
			ItemFavorito(nome: "US Open", favoritado: false),
			ItemFavorito(nome: "Wimbledon", favoritado: false),
			ItemFavorito(nome: "ATP Finals", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Rugby", itens: [
			ItemFavorito(nome: "Rugby World Cup", favoritado: false),
			ItemFavorito(nome: "Six Nations", favoritado: false),
			ItemFavorito(nome: "Rugby Championship", favoritado: false),
			ItemFavorito(nome: "Top 14", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Surf", itens: [
			ItemFavorito(nome: "WSL Championship Tour", favoritado: false),
			ItemFavorito(nome: "Challenger Series", favoritado: false),
			ItemFavorito(nome: "ISA World Surfing Games", favoritado: false),
			ItemFavorito(nome: "Olimpíadas", favoritado: false)
			
		]),
		
		CategoriaFavoritos(nome: "Baseball", itens: [
			ItemFavorito(nome: "MLB", favoritado: false),
			ItemFavorito(nome: "World Baseball Classic", favoritado: false),
			ItemFavorito(nome: "NPB (Japão)", favoritado: false),
			ItemFavorito(nome: "Little League World Series", favoritado: false)
			
		])
		
	]
	
	var body: some View {
		NavigationStack {
			List {
				ForEach($categorias) { $categoria in
					Section {
						ForEach($categoria.itens) { $item in
							linhaFavorito(item: $item)
								.listRowBackground(Color.clear)
						}
					} header: {
						Text(categoria.nome)
					}
				}
			}
			.listStyle(.insetGrouped)
			.background(.clear)
			.listSectionSeparator(.hidden)
			.scrollContentBackground(.hidden)

			.navigationTitle("Favoritos")
			.navigationBarTitleDisplayMode(.inline)
			.safeAreaInset(edge: .bottom) {
					HStack {
						Image(systemName: "magnifyingglass")
							.foregroundStyle(.secondary)

						Text("Buscar Categorias, Torneios e Times")
							.foregroundStyle(.secondary)

						Spacer()

						Button {

						} label: {
							Image(systemName: "mic.fill")
						}
						.buttonStyle(.plain)
						.accessibilityLabel("Busca por voz")
					}
					.padding(.horizontal, 16)
					.frame(height: 50)
					.background(.thickMaterial)
					.clipShape(Capsule())
					.padding(.horizontal, 16)
					.padding(.bottom, 8)

				}
		}
		.presentationDetents([.medium, .fraction(0.96)])
		.presentationDragIndicator(.visible)
		
	}
	
	@ViewBuilder
	func linhaFavorito(item: Binding<ItemFavorito>) -> some View {
		
		HStack {
			Text(item.wrappedValue.nome)
			
			Spacer()
			
			Button {
				item.wrappedValue.favoritado.toggle()
			} label: {
				Image(systemName: item.wrappedValue.favoritado ? "heart.fill" : "heart")
				.font(.subheadline)
				.symbolRenderingMode(.palette)
				.foregroundStyle(
					item.wrappedValue.favoritado ? .red : .secondary
				)
			}
			.buttonStyle(.plain)
			.accessibilityLabel(
				item.wrappedValue.favoritado
				? "Remover \(item.wrappedValue.nome) dos favoritos"
				: "Adicionar \(item.wrappedValue.nome) aos favoritos"
			)
		}
	}
}

#Preview {
	ListaFavoritos()
}
