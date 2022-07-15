//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    @IBOutlet weak var outcomeNotification: UITextField!
    
    let diceArray: Array = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    var diceOneWinCount: Int = 0
    var diceTwoWinCount: Int = 0

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("The RollButton got tapped.")

        let diceOneIndex: Int = Int.random(in: 1...6)
        let diceTwoIndex: Int = Int.random(in: 1...6)
        
        let diceOneRandom: String = diceArray[diceOneIndex - 1]
        let diceTwoRandom: String = diceArray[diceTwoIndex - 1]
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: diceOneRandom)
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: diceTwoRandom)
        
        
        if diceOneIndex > diceTwoIndex {
            outcomeNotification.text = "The left side wins!"
            diceOneWinCount += 1
        } else if diceOneIndex < diceTwoIndex {
            outcomeNotification.text = "The right side wins!"
            diceTwoWinCount += 1
        } else {
            outcomeNotification.text = "You guys are even!"
        }
    }

    @IBAction func recordButtonPressed(_ sender: UIButton) {
        print("The RecordButton got tapped.")
        
        outcomeNotification.text = "\(String(diceOneWinCount)) : \(String(diceTwoWinCount))"
    }
}

