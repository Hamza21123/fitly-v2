import Foundation

struct StreakManager {
    func updatedState(
        from state: StreakState,
        completedOn date: Date,
        calendar: Calendar = .current
    ) -> StreakState {
        if let lastDate = state.lastCompletedDate, calendar.isDate(lastDate, inSameDayAs: date) {
            return state
        }

        let newCurrentStreak: Int
        if let lastDate = state.lastCompletedDate,
           let dayDifference = calendar.dateComponents([.day], from: lastDate, to: date).day,
           dayDifference == 1 {
            newCurrentStreak = state.currentStreak + 1
        } else {
            newCurrentStreak = 1
        }

        let newLongest = max(state.longestStreak, newCurrentStreak)

        return StreakState(
            currentStreak: newCurrentStreak,
            longestStreak: newLongest,
            lastCompletedDate: date
        )
    }
}
