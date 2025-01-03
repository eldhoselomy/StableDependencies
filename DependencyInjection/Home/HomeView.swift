//
//  HomeView.swift
//  DependencyInjection
//
//  Created by Eldhose Lomy on 03/01/25.
//

import SwiftUI

struct HomeView: View {

    @StateObject var homeVM = HomeVM()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button(homeVM.purchased ? "Cancel" : "Purchase") {
                if homeVM.purchased {
                    homeVM.cancel()
                } else {
                    homeVM.purchase()
                }
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
