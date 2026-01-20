import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            PlanTabView()
                .tabItem {
                    Label("Plan", systemImage: "list.bullet")
                }

            RecoveryTabView()
                .tabItem {
                    Label("Recovery", systemImage: "heart.text.square")
                }

            ProfileTabView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
