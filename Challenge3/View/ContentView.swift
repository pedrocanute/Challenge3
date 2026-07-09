import SwiftUI
import Playgrounds

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
			Tab ("Esportes", systemImage: "soccerball.inverse") {
				NavigationStack{
					Esportes()
				}
			}
			Tab ("Favoritos", systemImage: "star") {
				Favoritos()
			}
			Tab ("Notícias", systemImage: "newspaper") {
				Noticias()
			}
			Tab ("Perfil", systemImage: "person"){
				Perfil()
			}
        }
		.tint(.corFutebol)
		.preferredColorScheme(.dark)
		
    }
}

#Preview {
    ContentView()
}
