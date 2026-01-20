import SwiftUI

struct PlanTabView: View {
    private let days: [(name: String, detail: String)] = [
        ("Mon", "Workout"),
        ("Tue", "Workout"),
        ("Wed", "Workout"),
        ("Thu", "Workout"),
        ("Fri", "Workout"),
        ("Sat", "Rest"),
        ("Sun", "Rest")
    ]

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("This Week")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Your training schedule")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                    }

                    VStack(spacing: 12) {
                        ForEach(days, id: \.name) { day in
                            HStack(spacing: 12) {
                                Text(day.name)
                                    .font(.headline)
                                Spacer()
                                Text(day.detail)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                Image(systemName: "chevron.right")
                                    .font(.footnote)
                                    .foregroundStyle(.tertiary)
                            }
                            .padding()
                            .background(Color(.secondarySystemGroupedBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    PlanTabView()
}
