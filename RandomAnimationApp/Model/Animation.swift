//
//  Animation.swift
//  RandomAnimationApp
//
//  Created by Aleksey Vinogradov on 06.09.2023.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let animation = Animation (
            preset: DataStore.shared.getRandomPreset(),
            curve: DataStore.shared.getRandomCurve(),
            force: DataStore.shared.getRandomForce(),
            duration: DataStore.shared.getRandomDuration(),
            delay: DataStore.shared.getRandomDelay()
        )
        
        return animation
    }
}
