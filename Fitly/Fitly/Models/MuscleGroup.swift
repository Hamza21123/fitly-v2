import Foundation

enum MuscleGroup: String, Codable, CaseIterable, Hashable, Identifiable {
enum MuscleGroup: String, Codable, CaseIterable, Hashable {
    case chest
    case back
    case shoulders
    case arms
    case legs
    case core
    case glutes
    case calves
    case fullBody
    case mobility

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .chest:
            return "Chest"
        case .back:
            return "Back"
        case .shoulders:
            return "Shoulders"
        case .arms:
            return "Arms"
        case .legs:
            return "Legs"
        case .core:
            return "Core"
        case .glutes:
            return "Glutes"
        case .calves:
            return "Calves"
        case .fullBody:
            return "Full Body"
        case .mobility:
            return "Mobility"
        }
    }
    case legs
    case shoulders
    case arms
    case core
    case glutes
}
