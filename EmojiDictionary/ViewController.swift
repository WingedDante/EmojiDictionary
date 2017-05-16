//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Logan Trecartin on 5/10/17.
//  Copyright © 2017 WingedDante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiList: UITableView!
    
    var emojis: [Emoji] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiList.dataSource = self
        emojiList.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].emoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detailSegue", sender: emojis[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! EmojiDefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Create the array with emojis and related data
    func makeEmojiArray () -> [Emoji]{
        var emojis = ["👽","🤑","😀","😇","😡","😈","💩","✊","👀","🐸"]
        var emojiDefinitions = ["Out of this world alien face", "Greedy money face", "Big smiley face", "Innocent angel face", "Furious face", "Smiley devil face", "Happy poo", "Raised fist", "Wide side eyes", "Froggy face"]
        var emojiCategories = ["Creature","Person", "Person", "Person", "Person", "Person", "Object", "Object", "Object", "Creature"]
        var emojiYears = [2000,2012,1998,2002,2002,2000,2005,2008,2010,2005]
        
        var emojiArray  = [Emoji]()
        for index in 0...emojis.count-1{
            let newEmoji = Emoji()
            newEmoji.emoji = emojis[index]
            newEmoji.definition = emojiDefinitions[index]
            newEmoji.category = emojiCategories[index]
            newEmoji.startYear = emojiYears[index]
            emojiArray.append(newEmoji)
        }
        
        return emojiArray
    }

}

