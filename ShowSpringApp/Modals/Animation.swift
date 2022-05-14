//
//  Animation.swift
//  ShowSpringApp
//
//  Created by Денис on 14.05.2022.
//

import Foundation

struct Animation {

    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var parameterAnimation: String {
        """
        Name: \(name)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animationPreset.randomElement() ?? "shake",
            curve: DataManager.shared.animationCurve.randomElement() ?? "spring",
            force: Float.random(in: 0...3),
            duration: Float.random(in: 0...3),
            delay: Float.random(in: 0.1...0.2)
        )
    }
}
