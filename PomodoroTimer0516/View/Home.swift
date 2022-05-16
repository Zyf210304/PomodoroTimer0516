//
//  Home.swift
//  PomodoroTimer0516
//
//  Created by 张亚飞 on 2022/5/16.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            
            GeometryReader { proxy in
                VStack(spacing: 15) {
                    //timer ring
                    ZStack {
                        
                        Circle()
                            .fill(.white.opacity(0.05))
                            .padding(-40)
                        
                        //make  shadow
                        Circle()
                            .stroke(Color("Purple"), lineWidth: 5)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color("BG"))
                        
                        Circle()
                            .trim(from: 0, to: 0.75)
                            .stroke(Color("Purple").opacity(0.7), lineWidth: 10)
                           
                        
                        //mark knob
                        GeometryReader { proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color("Purple"))
                                .frame(width: 30, height: 30)
                                .overlay {
                                    Circle()
                                        .fill(.white)
                                        .padding(5)
                                }
                                .frame(width: size.width, height: size.height, alignment: .center)
                                .offset(x: size.height / 2)
                        }
                    }
                    .padding(60)
                    .frame(height: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
        .padding()
        .background(content: {
            Color("BG")
                .ignoresSafeArea()
        })
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}
