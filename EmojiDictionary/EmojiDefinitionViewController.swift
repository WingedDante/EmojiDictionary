//
//  EmojiDefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Logan Trecartin on 5/10/17.
//  Copyright © 2017 WingedDante. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = "NOMOJI"
    
    @IBOutlet weak var largeEmoji: UILabel!
    
    @IBOutlet weak var emojiDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        largeEmoji.text = emoji
        
        if emoji == "😀"{
         emojiDefinition.text = "A smiley face! So Happy!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
