//
//  DataManager.swift
//  ShowSpringApp
//
//  Created by Денис on 14.05.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()

    let animationPreset: [String] = Spring.AnimationPreset.allCases.map {$0.rawValue}
    let animationCurve: [String] = Spring.AnimationCurve.allCases.map {$0.rawValue}
    
    private init() {}
}
