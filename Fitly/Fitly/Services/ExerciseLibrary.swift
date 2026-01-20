import Foundation

struct ExerciseLibrary {
    static let exercises: [Exercise] = [
        Exercise(
            id: UUID(),
            name: "Push-Up",
            muscleGroups: [.chest, .arms, .core],
            equipment: [.bodyweight],
            instructions: [
                "Start in a high plank position.",
                "Lower chest toward the floor with control.",
                "Press back up while keeping the core engaged."
            ],
            difficulty: .beginner
        ),
        Exercise(
            id: UUID(),
            name: "Bodyweight Squat",
            muscleGroups: [.legs, .glutes, .core],
            equipment: [.bodyweight],
            instructions: [
                "Stand with feet shoulder-width apart.",
                "Sit hips back and down while keeping chest tall.",
                "Drive through heels to stand tall."
            ],
            difficulty: .beginner
        ),
        Exercise(
            id: UUID(),
            name: "Dumbbell Row",
            muscleGroups: [.back, .arms],
            equipment: [.dumbbells, .bench],
            instructions: [
                "Place one hand on a bench for support.",
                "Pull the dumbbell toward the ribs.",
                "Lower with control and repeat."
            ],
            difficulty: .intermediate
        ),
        Exercise(
            id: UUID(),
            name: "Kettlebell Swing",
            muscleGroups: [.glutes, .legs, .core],
            equipment: [.kettlebell],
            instructions: [
                "Hinge at the hips with a flat back.",
                "Drive hips forward to swing the kettlebell.",
                "Let the bell float and return to the hinge."
            ],
            difficulty: .intermediate
        ),
        Exercise(
            id: UUID(),
            name: "Barbell Deadlift",
            muscleGroups: [.back, .legs, .glutes],
            equipment: [.barbell],
            instructions: [
                "Set feet under the bar with a neutral spine.",
                "Brace and lift the bar by extending hips and knees.",
                "Lower the bar under control."
            ],
            difficulty: .advanced
        ),
        Exercise(
            id: UUID(),
            name: "Plank Hold",
            muscleGroups: [.core, .shoulders],
            equipment: [.bodyweight],
            instructions: [
                "Start in a forearm plank position.",
                "Maintain a straight line from head to heels.",
                "Hold while breathing steadily."
            ],
            difficulty: .beginner
        )
    ]

    static func exercises(for goal: FitnessGoal) -> [Exercise] {
        switch goal {
        case .strength:
            return exercises.filter { $0.difficulty != .beginner }
        case .hypertrophy:
            return exercises.filter { $0.muscleGroups.contains(.chest) || $0.muscleGroups.contains(.back) }
        case .endurance:
            return exercises.filter { $0.equipment.contains(.bodyweight) }
        case .mobility:
            return exercises.filter { $0.muscleGroups.contains(.core) }
        case .weightLoss:
            return exercises.filter { $0.muscleGroups.contains(.legs) || $0.muscleGroups.contains(.glutes) }
        }
    }
}
