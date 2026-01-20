import Foundation

struct NotificationRequest: Identifiable, Codable, Hashable {
    let id: UUID
    let title: String
    let body: String
    let fireDate: Date
}

struct NotificationService {
    func buildDailyReminderRequests(
        startDate: Date,
        days: Int,
        title: String,
        body: String,
        calendar: Calendar = .current
    ) -> [NotificationRequest] {
        guard days > 0 else {
            return []
        }

        return (0..<days).compactMap { offset in
            guard let fireDate = calendar.date(byAdding: .day, value: offset, to: startDate) else {
                return nil
            }

            return NotificationRequest(
                id: UUID(),
                title: title,
                body: body,
                fireDate: fireDate
            )
        }
    }
}
