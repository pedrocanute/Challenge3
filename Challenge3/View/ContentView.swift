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
	
	var body: some View {
		ZStack {
			telaPrincipal
				.opacity(mostrarSplash ? 0 : 1)
			
			if mostrarSplash {
				SplashScreen()
					.transition(.opacity)
					.zIndex(1)
			}
		}
		.task {
			try? await Task.sleep(for: .seconds(1.7))
			
			withAnimation(.easeInOut(duration: 0.7)) {
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
