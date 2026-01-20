import Foundation

struct UserDefaultsStore {
    private let userDefaults: UserDefaults
    private let encoder: JSONEncoder
    private let decoder: JSONDecoder

    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
        self.encoder = JSONEncoder()
        self.decoder = JSONDecoder()
    }

    @discardableResult
    func save<T: Codable>(_ value: T, forKey key: String) -> Bool {
        do {
            let data = try encoder.encode(value)
            userDefaults.set(data, forKey: key)
            return true
        } catch {
            return false
        }
    }

    func load<T: Codable>(forKey key: String, as type: T.Type) -> T? {
        guard let data = userDefaults.data(forKey: key) else {
            return nil
        }

        do {
            return try decoder.decode(type, from: data)
        } catch {
            return nil
        }
    }

    func removeValue(forKey key: String) {
        userDefaults.removeObject(forKey: key)
    }
}
