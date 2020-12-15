//
//  DeteilEmojiViewController.swift
//  EmojiDictionary
//
//  Created by Сергей Голенко on 15.12.2020.
//

import UIKit

class DeteilEmojiViewController: UIViewController {
    
    
    let item = "🤼‍♂️"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = item

    }


}
