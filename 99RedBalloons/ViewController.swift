//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Tony Morales on 9/28/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonNumberLabel: UILabel!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var balloons:[Balloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var zeroBalloons = Balloon()
        
        for var x = 0; x < 99; x++ {
            var balloon = Balloon()
            balloon.balloonNumber = x + 1
            balloon.balloonImage = UIImage(named: zeroBalloons.randomBalloonImage())
            balloons += [balloon]
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let balloon = balloons[currentIndex]
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCurlUp, animations: {
            self.backgroundImageView.image = balloon.balloonImage
            self.balloonNumberLabel.text = "\(balloon.balloonNumber) Balloons!"
            }, completion: { (finished: Bool) -> () in
        })
        
        currentIndex++
    }

}

