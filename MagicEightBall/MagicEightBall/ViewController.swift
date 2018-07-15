//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Rinni Swift on 7/2/18.
//  Copyright © 2018 Rinni Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        print("Shake it like a polaroid picture!")
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        answerLabel.text = answers[randomIndex]
        
        func generateAnswer() {
            let maxIndex = UInt32(answers.count)
            let randomIndex = Int(arc4random_uniform(maxIndex))
            
            answerLabel.text = answers[randomIndex]
        }
        
        

//        answerLabel.text = "Button was tapped"
    }
    
}


