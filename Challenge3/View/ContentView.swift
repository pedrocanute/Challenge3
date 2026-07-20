import SwiftUI
import Playgrounds

@main
struct MyApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView()
		}
	}
}

struct ContentView: View {
	
	@State private var mostrarSplash = true
	var opacidadeSplashScreen: Double { mostrarSplash ? 0 : 1 }
	let tempoEspera: Double = 1.7
	let tempoDeFade: Double = 0.7
	
	var body: some View {
		ZStack {
			telaPrincipal
				.opacity(opacidadeSplashScreen)
			
			if mostrarSplash {
				SplashScreen()
					.transition(.opacity)
					.zIndex(1)
			}
		}
		.task {
			try? await Task.sleep(for: .seconds(tempoEspera))
			
			withAnimation(.easeInOut(duration: tempoDeFade)) {
				mostrarSplash = false
			}
		}
	}
	
	var telaPrincipal: some View {
		TabView {
			Tab("Esportes", image: "bola") {
				NavigationStack {
					Esportes()
				}
			}
			
			Tab("Favoritos", image: "favoritos") {
				NavigationStack {
					Favoritos()
				}
			}
			
			Tab("Notícias", image: "news") {
				NavigationStack {
					Noticias()
				}
			}
			
			Tab("Perfil", image: "perfil") {
				NavigationStack {
					Perfil()
				}
			}
		}
		.tint(.corFutebol)
	}
}

#Preview {
	ContentView()
}
