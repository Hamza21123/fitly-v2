import Foundation

struct DayPlan: Codable, Hashable {
    let day: DayOfWeek
    let workouts: [Workout]
    let recoveryFocus: [MuscleGroup]
    let notes: String
}
