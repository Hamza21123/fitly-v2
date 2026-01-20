import Foundation

struct RecoveryService {
    func status(forSleepHours sleepHours: Double, restingHeartRate: Int, baselineRestingHeartRate: Int) -> RecoveryStatus {
        let hrDelta = restingHeartRate - baselineRestingHeartRate

        if sleepHours >= 7.5 && hrDelta <= 2 {
            return .good
        }

        if sleepHours >= 6.0 && hrDelta <= 6 {
            return .moderate
        }

        return .poor
    }

    func insight(
        for date: Date,
        sleepHours: Double,
        restingHeartRate: Int,
        baselineRestingHeartRate: Int,
        notes: String
    ) -> RecoveryInsight {
        let recoveryStatus = status(
            forSleepHours: sleepHours,
            restingHeartRate: restingHeartRate,
            baselineRestingHeartRate: baselineRestingHeartRate
        )

        return RecoveryInsight(
            id: UUID(),
            date: date,
            status: recoveryStatus,
            restingHeartRate: restingHeartRate,
            sleepHours: sleepHours,
            notes: notes
        )
    }
}
