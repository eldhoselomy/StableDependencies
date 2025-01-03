// The Swift Programming Language
// https://docs.swift.org/swift-book

import TravelService
import StoreService

public class TravelCore: TravelService {

    let store: StoreService

    public init(store: StoreService) {
        self.store = store
    }

    public func book() {
        print("booking accommodation")
        print("booked")
        print("booking gift")
        store.purchase()
    }

    public func cancel() {
        print("accommodation booking cancelled")
        print("cancelling gift")
        store.cancel()
    }
}
