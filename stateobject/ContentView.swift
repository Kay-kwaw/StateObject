//
//  ContentView.swift
//  stateobject
//
//  Created by kwaw-kumi on 04/12/2023.
//

import SwiftUI

class TimerManager: ObservableObject {
    @Published var timerCount = 0;
    
    private var timer = Timer();
    
    func Start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
             self.timerCount += 1
           }
    }
    func stop() {
        timer.invalidate();
    }
}
