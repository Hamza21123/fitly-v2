import SwiftUI

@MainActor
final class AppStateViewModel: ObservableObject {
    @Published var isOnboardingComplete: Bool = false
}
