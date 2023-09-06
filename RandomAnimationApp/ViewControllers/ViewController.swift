//
//  ViewController.swift
//  RandomAnimationApp
//
//  Created by Aleksey Vinogradov on 06.09.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationParametersLabel: SpringLabel!
    @IBOutlet var startAnimationButton: SpringButton!
    
    var animation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNextAnimation()
        
        startAnimationButton.layer.cornerRadius = 10
        animationView.layer.cornerRadius = 10
        
    }

    @IBAction func startAnimationButtonTapped(_ sender: SpringButton) {
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animationParametersLabel.animation = "zoomIn"
        animationParametersLabel.curve = "easeIn"
        animationParametersLabel.force = 1
        animationParametersLabel.duration = 0.5
        animationParametersLabel.delay = 0
        animationParametersLabel.animate()
        
        animationParametersLabel.text = """
        preset: \(animation.preset)\ncurve: \(animation.curve)
        force: \(String(format: "%.2f", animation.force))
        duration: \(String(format: "%.2f", animation.duration))
        delay: \(String(format: "%.2f", animation.delay))
        """
        
        getNextAnimation()
 
    }
    
    private func getNextAnimation() {
        animation = Animation.getAnimation()
        startAnimationButton.setTitle(animation.preset, for: .normal)
    }

}

