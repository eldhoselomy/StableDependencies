// The Swift Programming Language
// https://docs.swift.org/swift-book

import StoreService

public class StoreCore: StoreService {

    public init() {}

    public func purchase() {
        print("purchasing....")
        print("purchased")
    }

    public func cancel() {
        print("purchase cancelled")
    }
}
