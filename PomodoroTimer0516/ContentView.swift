//
//  ContentView.swift
//  PomodoroTimer0516
//
//  Created by 张亚飞 on 2022/5/16.
//

import SwiftUI


struct ContentView: View {
   
    @EnvironmentObject var promodoroModel: PomodoroModel
    
    var body: some View {
        Home().environmentObject(promodoroModel)
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
