//
//  ViewController.swift
//  AnimationApp
//
//  Created by macbook on 20/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var springButton: SpringButton!
    @IBOutlet var springLabel: SpringLabel!
    
    
    let cornerRadius: CGFloat = 20
    var animation = animations.randomElement()!.rawValue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springButton.layer.cornerRadius = cornerRadius
        springView.layer.cornerRadius = cornerRadius
        
        springView.animate()
        springButton.animate()
    }
    
    @IBAction func springButtonPressed(_ sender: SpringButton) {
        springView.animation = animation
        springView.curve = animationCurves.randomElement()!.rawValue
        springView.force = CGFloat.random(in: 1...5)
        springView.duration = CGFloat.random(in: 0.5...5)
        springView.delay = CGFloat.random(in: 0...1)
        springView.rotate = CGFloat.random(in: 0...5)
        springView.damping = CGFloat.random(in: 0...1)
        
        springLabel.text = "animation: \(animation)\n curve: \(springView.curve) \n force: = \(NSString(format: "%.1f", springView.force)) \n duration: \(NSString(format: "%.1f", springView.duration)) \n delay: \(NSString(format: "%.1f", springView.delay)) \n rotate: \(NSString(format: "%.1f", springView.rotate)) \n damping: \(NSString(format: "%.1f", springView.damping))"
        
        springView.animate()
        
        animation = animations.randomElement()!.rawValue
        springButton.setTitle(animation, for: .normal)
        springButton.animation = "pop"
        springButton.curve = "easelnOut"
        springButton.animate()
    }
    
}

