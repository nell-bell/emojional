//
//  ViewController.swift
//  emojional
//
//  Created by julia nellie on 6/18/20.
//  Copyright © 2020 julia nellie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🥰" : "loved" , "😓" : "sad", "🤕" : "hurt", "🤩" : "excited"]
    let specialMessages = ["loved" : ["i love you always", "never forget it!", "keep that feeling"], "sad" : ["things will get better", "you are stronger than you know", "chin up buttercup"], "hurt" : ["you will get through this", "understand why", "in time, you will be alright"], "excited" : ["remember this", "never lose joy", "soar."] ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named : "stars3.jpg")!)
    }
    @IBAction func showMessage(sender : UIButton){
        
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = specialMessages[emojis[selectedEmotion]!]!
        let random = Int.random(in: 0..<3)
        let emojiMessage = options[random]
    
        let alertController = UIAlertController(title: emojis[selectedEmotion] , message: emojiMessage , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style :UIAlertAction.Style.default, handler :nil))
        
        present(alertController, animated : true, completion : nil)
    }
}

