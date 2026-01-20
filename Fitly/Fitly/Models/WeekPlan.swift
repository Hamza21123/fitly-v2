import Foundation

struct WeekPlan: Identifiable, Codable, Hashable {
    let id: UUID
    let startDate: Date
    let days: [DayPlan]
}
