//
//  TipKit_PracticeApp.swift
//  TipKit_Practice
//
//  Created by Prajwal U on 01/02/24.
//

import SwiftUI
import TipKit

@main
struct TipKit_PracticeApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .task {
                    try? Tips.configure([
               //         .displayFrequency(.immediate)
                        .datastoreLocation(.applicationDefault)])
                }
        }
    }
}
