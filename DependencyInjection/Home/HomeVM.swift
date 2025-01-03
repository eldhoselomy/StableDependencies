//
//  HomeVM.swift
//  DependencyInjection
//
//  Created by Eldhose Lomy on 03/01/25.
//

import Foundation
import Store
import Travel
import TravelService

class HomeVM : ObservableObject {
    private let travelService: TravelService

    @Published var purchased: Bool = false

    init() {
        let store = StoreCore()
        self.travelService = TravelCore(store: store)
    }

    func purchase() {
        purchased = true
        travelService.book()
    }

    func cancel() {
        purchased = false
        travelService.cancel()
    }
}
