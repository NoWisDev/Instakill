import UIKit
import Combine

var cancellables = Set<AnyCancellable>()
@objc public class Instakill: NSObject, ObservableObject {
    @objc public func arm() {
        NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification, object: nil)
            .sink { notification in
                exit(0)
            }
            .store(in: &cancellables)
    }
}