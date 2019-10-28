//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardLeft: UIButton!
    @IBOutlet weak var cardMiddle: UIButton!
    @IBOutlet weak var cardRight: UIButton!
    @IBOutlet weak var playerMessage: UILabel!
    
    let images = ["cardBackRed.png",
                  "kingCard.jpg",
                  "threeCard.png"]
    
    
    @IBAction func cardSelect(_ sender: UIButton) {
        let cardSelection: (bgColor: UIColor?, winLose: String)
        switch sender.tag {
        case 0:
            cardSelection = (.red, "WRONG")
        case 1:
            cardSelection = (.red, "WRONG")
        case 2:
            cardSelection = (.green, "Correct!")
        default:
            break
            
        }
        view.backgroundColor = cardSelection.bgColor
        playerMessage.text = cardSelection.winLose
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
