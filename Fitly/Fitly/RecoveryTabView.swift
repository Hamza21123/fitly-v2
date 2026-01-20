import SwiftUI

struct RecoveryTabView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Recovery")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Check in on recovery and readiness.")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    RecoveryTabView()
}
