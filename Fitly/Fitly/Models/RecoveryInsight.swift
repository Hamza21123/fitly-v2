import Foundation

struct RecoveryInsight: Identifiable, Codable, Hashable {
    let id: UUID
    let date: Date
    let status: RecoveryStatus
    let restingHeartRate: Int
    let sleepHours: Double
    let notes: String
}
