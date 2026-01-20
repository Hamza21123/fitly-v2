import Foundation

struct UserProfile: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let age: Int
    let experience: ExperienceLevel
    let goal: FitnessGoal
    let goals: [FitnessGoal]
    let injuries: [InjuryType]
    let equipment: [EquipmentType]
    let settings: AppSettings
    let streak: StreakState
}
