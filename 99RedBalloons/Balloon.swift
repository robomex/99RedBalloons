//
//  Balloon.swift
//  99RedBalloons
//
//  Created by Tony Morales on 9/28/14.
//  Copyright (c) 2014 Tony Morales. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var balloonNumber = 0
    var balloonImage = UIImage(named:"")
    
    func randomBalloonImage () -> String {
        let randomNumber = Int(arc4random_uniform(UInt32(4)))
        var randomBalloonImage:String
        
        switch randomNumber {
        case 1:
            randomBalloonImage = "RedBalloon1.jpg"
        case 2:
            randomBalloonImage = "RedBalloon2.jpg"
        case 3:
            randomBalloonImage = "RedBalloon3.jpg"
        default:
            randomBalloonImage = "RedBalloon4.jpg"
        }
        return randomBalloonImage
    }
    
//    func createBalloons (numberOfBalloonsToCreate: Int) {
//        for var balloonsCreated = 1; balloonsCreated <= numberOfBalloonsToCreate; balloonsCreated++ {
//            
//        }
//    }
}




