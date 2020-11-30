//
//  HapticTouchEvent.swift
//  CustomHapticTouch
//
//  Created by Mac on 30.11.2020.
//

import Foundation
import CoreHaptics

class CustomHapticTouch {
    static let shared : CustomHapticTouch = CustomHapticTouch()
    fileprivate var engine : CHHapticEngine?
    init() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {
            return
        }
        do {
            self.engine = try CHHapticEngine()
            try self.engine?.start()
        }catch {
            print("Error haptic : \(error.localizedDescription)")
        }
    }
    func playHaptic(patterns : HapticTouchEvents) {
        guard let engine = self.engine else {return}
        do {
            let pattern = try CHHapticPattern(dictionary: patterns.selectedPattern)
            let player = try engine.makePlayer(with: pattern)
            try player.start(atTime: 0)
            
            engine.resetHandler = {
                do {
                    try engine.start()
                    let player = try engine.makePlayer(with: pattern)
                    try player.start(atTime: 0)
                } catch {
                    fatalError("Failed to restart the engine: \(error)")
                }
            }
            engine.stoppedHandler = { reason in
                print("Stopped with error :> \(reason.rawValue)")
            }
        }catch {
            print("Error haptic : \(error.localizedDescription)")
        }
    }
    
    

}
