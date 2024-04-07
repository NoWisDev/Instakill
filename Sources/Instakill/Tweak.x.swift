import Orion
import InstakillC
import UIKit
import Combine

var cancellables = Set<AnyCancellable>()
final class Instakill: Tweak {
    init() {
        NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification, object: nil)
            .sink { notification in
                exit(0)
            }
            .store(in: &cancellables)
    }
}