import SwiftUI

struct ProfileTabView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Manage your account and settings.")
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    ProfileTabView()
}
