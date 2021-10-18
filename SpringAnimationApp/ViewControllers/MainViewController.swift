//
//  MainViewController.swift
//  SpringAnimationApp
//
//  Created by Михаил Мезенцев on 29.09.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    private var animation = SpringAnimation.getSpringAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springView.layer.cornerRadius = 20
        runAnimationButton.layer.cornerRadius = 10
        descriptionLabel.text = animation.description
    }
    
    @IBAction func runAnimationPressed() {
        descriptionLabel.text = animation.description
        prepareAnimation()
        springView.animate()
        animation = SpringAnimation.getSpringAnimation()
        runAnimationButton.setTitle(
            "Next: \(animation.name)",
            for: .normal
        )
    }
    
    private func prepareAnimation() {
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.delay = CGFloat(animation.delay)
        springView.duration = CGFloat(animation.duration)
        springView.damping = CGFloat(animation.damping)
        springView.velocity = CGFloat(animation.velocity)
    }
}
