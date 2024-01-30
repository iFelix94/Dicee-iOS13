//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var dices = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]
    
    var leftDiceNumber = 1
    var rightDiceNumber = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = dices[0]
        diceImageView2.image = dices[5]
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = dices[leftDiceNumber]
        diceImageView2.image = dices[rightDiceNumber]

        leftDiceNumber=leftDiceNumber+1
        rightDiceNumber=rightDiceNumber-1
    }
    
}

