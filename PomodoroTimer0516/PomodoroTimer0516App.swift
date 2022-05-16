//
//  PomodoroTimer0516App.swift
//  PomodoroTimer0516
//
//  Created by 张亚飞 on 2022/5/16.
//

import SwiftUI

@main
struct PomodoroTimer0516App: App {
    //mark since we're doing background fetching intializing here
    @StateObject var pomodoroModel: PomodoroModel = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModel)
        }
    }
}
