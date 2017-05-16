//
//  EmojiDefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Logan Trecartin on 5/10/17.
//  Copyright © 2017 WingedDante. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var largeEmoji: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        largeEmoji.text = emoji.emoji
        emojiDefinition.text = emoji.definition
        categoryLabel.text = emoji.category
        yearLabel.text = String(emoji.startYear)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
