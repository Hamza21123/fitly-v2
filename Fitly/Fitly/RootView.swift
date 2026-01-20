import SwiftUI

struct RootView: View {
    @EnvironmentObject var appState: AppStateViewModel

    var body: some View {
        if appState.isOnboardingComplete {
            MainTabView()
        } else {
            OnboardingView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(AppStateViewModel())
}
