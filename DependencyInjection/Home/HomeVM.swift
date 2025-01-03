//
//  HomeVM.swift
//  DependencyInjection
//
//  Created by Eldhose Lomy on 03/01/25.
//

import Foundation
import Store
import StoreService

class HomeVM : ObservableObject {
    let storeService: StoreService

    @Published var purchased: Bool = false

    init(storeService: StoreService = StoreCore()) {
        self.storeService = storeService
    }

    func purchase() {
        purchased = true
        storeService.purchase()
    }

    func cancel() {
        purchased = false
        storeService.cancel()
    }
}
