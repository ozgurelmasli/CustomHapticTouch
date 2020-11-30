//
//  HapticTouchEnum.swift
//  CustomHapticTouch
//
//  Created by Mac on 30.11.2020.
//

import Foundation
import CoreHaptics

public enum HapticTouchEvents {
    case pattern_1
    case pattern_2
    
    
    var selectedPattern : [CHHapticPattern.Key:Any] {
        switch self {
        case .pattern_1:
            return  [
                CHHapticPattern.Key.pattern: [
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.1,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.3,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.5,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.7,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.9,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ]
                ]
            ]
        case .pattern_2:
            return   [
                CHHapticPattern.Key.pattern: [
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 0.5,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                    [CHHapticPattern.Key.event: [CHHapticPattern.Key.eventType: CHHapticEvent.EventType.hapticTransient,
                                                 CHHapticPattern.Key.time: 1.5,
                          CHHapticPattern.Key.eventDuration: 1.0]
                    ],
                ]
            ]
        }
    }
}
