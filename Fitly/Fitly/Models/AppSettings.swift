import Foundation

struct AppSettings: Codable, Hashable {
    let notificationsEnabled: Bool
    let preferredGoal: FitnessGoal
    let equipmentAvailable: [EquipmentType]
}
