import Foundation

struct Workout: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let goal: FitnessGoal
    let exercises: [Exercise]
    let durationMinutes: Int
}
