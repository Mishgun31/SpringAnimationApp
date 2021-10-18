//
//  SpringAnimation.swift
//  SpringAnimationApp
//
//  Created by Михаил Мезенцев on 30.09.2021.
//

struct SpringAnimation {
    
    let name: String
    let curve: String
    
    let force: Float
    let delay: Float
    let duration: Float
    let damping: Float
    let velocity: Float
    
    var description: String {
        """
        Animation: \(name)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Delay: \(String(format: "%.2f", delay))
        Duration: \(String(format: "%.2f", duration))
        """
    }
    
    static func getSpringAnimation() -> SpringAnimation {
        SpringAnimation(
            name: DataManager.shared.animationNames.randomElement() ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement() ?? "easeIn",
            force: Float.random(in: 1.0...2.0),
            delay: Float.random(in: 0.0...1.0),
            duration: Float.random(in: 0.5...3.0),
            damping: Float.random(in: 0.0...1.0),
            velocity: Float.random(in: 0.0...1.0)
        )
    }
}
