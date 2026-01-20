import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var appState: AppStateViewModel

    var body: some View {
        VStack(spacing: 12) {
            Text("Fitly")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Workout plan + recovery")
                .font(.headline)
                .foregroundStyle(.secondary)

            Button("Continue") {
                appState.isOnboardingComplete = true
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 12)
        }
        .padding()
    }
}

#Preview {
    OnboardingView()
        .environmentObject(AppStateViewModel())
}
