//
//  DataStore.swift
//  RandomAnimationApp
//
//  Created by Aleksey Vinogradov on 06.09.2023.
//

import Foundation
import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    func getRandomPreset() -> String {
        AnimationPreset.allCases.randomElement()?.rawValue ?? "pop"
    }

    func getRandomCurve() -> String {
        AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn"
    }
    
    func getRandomForce() -> Double {
        Double.random(in: 0..<3)
    }
    
    func getRandomDuration() -> Double {
        Double.random(in: 0.5..<1.5)
    }
    
    func getRandomDelay() -> Double {
        Double.random(in: 0.5..<1.5)
    }
    
    
    private init() {}
}
