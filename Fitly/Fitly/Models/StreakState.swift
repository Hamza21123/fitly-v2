import Foundation

struct StreakState: Codable, Hashable {
    let currentStreak: Int
    let longestStreak: Int
    let lastCompletedDate: Date?
}
