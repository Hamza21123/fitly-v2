import Foundation

struct DebugValidation {
    static func validateData() {
        #if DEBUG
        let rawValues = MuscleGroup.allCases.map { $0.rawValue }
        assert(Set(rawValues).count == rawValues.count, "Duplicate MuscleGroup raw values detected.")

        let exerciseIDs = ExerciseLibrary.exercises.map { $0.id }
        assert(Set(exerciseIDs).count == exerciseIDs.count, "Duplicate ExerciseLibrary IDs detected.")
        #endif
    }
}
