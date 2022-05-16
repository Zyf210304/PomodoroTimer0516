//
//  PomodoroTimer0516App.swift
//  PomodoroTimer0516
//
//  Created by 张亚飞 on 2022/5/16.
//

import SwiftUI

@main
struct PomodoroTimer0516App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
