import Foundation

struct PlanGenerator {
    func generateWeekPlan(
        starting startDate: Date,
        for profile: UserProfile,
        calendar: Calendar = .current
    ) -> WeekPlan {
        let goal = profile.goal
        let goal = profile.goals.first ?? profile.settings.preferredGoal
        let availableExercises = ExerciseLibrary.exercises(for: goal)
        let fallbackExercises = ExerciseLibrary.exercises
        let weekdays: [DayOfWeek] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]

        var dayPlans: [DayPlan] = []

        for (index, day) in weekdays.enumerated() {
            let isWeekend = day == .saturday || day == .sunday
            let exercises = selectExercises(
                from: availableExercises.isEmpty ? fallbackExercises : availableExercises,
                count: 3,
                offset: index
            )

            let workouts = isWeekend ? [] : [
                Workout(
                    id: UUID(),
                    name: "Day \(index + 1) Session",
                    goal: goal,
                    exercises: exercises,
                    durationMinutes: 45
                )
            ]

            let recoveryFocus: [MuscleGroup] = isWeekend ? [.legs, .back] : [.core]
            let recoveryFocus = isWeekend ? [.legs, .back] : [.core]

            let dayPlan = DayPlan(
                day: day,
                workouts: workouts,
                recoveryFocus: recoveryFocus,
                notes: isWeekend ? "Active recovery and mobility work." : "Focus on form and steady effort."
            )

            dayPlans.append(dayPlan)
        }

        return WeekPlan(
            id: UUID(),
            startDate: startDate,
            days: dayPlans
        )
    }

    private func selectExercises(from exercises: [Exercise], count: Int, offset: Int) -> [Exercise] {
        guard !exercises.isEmpty else {
            return []
        }

        var selection: [Exercise] = []
        for index in 0..<count {
            let exerciseIndex = (index + offset) % exercises.count
            selection.append(exercises[exerciseIndex])
        }
        return selection
    }
}
