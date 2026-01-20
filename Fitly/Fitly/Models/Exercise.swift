import Foundation

struct Exercise: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let muscleGroups: [MuscleGroup]
    let equipment: [EquipmentType]
    let instructions: [String]
    let difficulty: ExperienceLevel
}
