import SwiftUI

@main
struct FitlyApp: App {
    @StateObject private var appState = AppStateViewModel()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(appState)
        }
    }
}
