import SwiftUI

struct PlanTabView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Plan")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Your training plan will appear here.")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    PlanTabView()
}
