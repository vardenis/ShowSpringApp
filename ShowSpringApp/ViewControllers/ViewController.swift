//
//  ViewController.swift
//  ShowSpringApp
//
//  Created by Денис on 14.05.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var parameterLable: UILabel!
    @IBOutlet var animationView: SpringView!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parameterLable.text = animation.parameterAnimation
        animationView.layer.cornerRadius = 10
    }

    @IBAction func buttonAnimationPressed(_ sender: UIButton) {
        
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        parameterLable.text = animation.parameterAnimation
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
        
        
    }
    
}

