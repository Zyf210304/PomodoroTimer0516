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
    
    @Environment(\.scenePhase) var phase
    @State var lastActiveTimeStamp: Date = Date()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModel)
        }
        .onChange(of: phase) { newValue in
            
            if pomodoroModel.isStarted {
                if newValue == .background {
                    lastActiveTimeStamp = Date()
                }
                
                if newValue == .active {
                    let currentTimeStampDiff = Date().timeIntervalSince(lastActiveTimeStamp)
                    
                    if pomodoroModel.totalSeconds - Int(currentTimeStampDiff) <= 0 {
                        pomodoroModel.isStarted = false
                        pomodoroModel.totalSeconds = 0
                        pomodoroModel.isfinished = true
                    } else {
                        pomodoroModel.totalSeconds -=  Int(currentTimeStampDiff)
                    }
                }
            }
        }
    }
}
