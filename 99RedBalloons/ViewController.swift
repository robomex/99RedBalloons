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
        
        createBalloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createBalloons () {
        for var balloonCount = 0; balloonCount < 99; balloonCount++ {
            var balloon = Balloon()
            
            balloon.number = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            switch randomNumber {
            case 1:
                balloon.image = UIImage(named:"RedBalloon1.jpg")
            case 2:
                balloon.image = UIImage(named:"RedBalloon2.jpg")
            case 3:
                balloon.image = UIImage(named:"RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named:"RedBalloon4.jpg")
            }
            
            balloons.append(balloon)
        }
    }
    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let balloon = balloons[currentIndex]
        
        backgroundImageView.image = balloon.image
        balloonNumberLabel.text = "\(balloon.number + 1) Balloons!"
        
        currentIndex++
    }
}

