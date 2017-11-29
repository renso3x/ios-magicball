//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Romeo Enso on 29/11/2017.
//  Copyright © 2017 Romeo Enso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImage: UIImageView!
    
    var answers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ask()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ask()
    }
    
    func ask() {
        
        let randomAnswer = Int(arc4random_uniform(5))
        
        magicBallImage.image = UIImage(named: answers[randomAnswer])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ask()
        
    }
}

