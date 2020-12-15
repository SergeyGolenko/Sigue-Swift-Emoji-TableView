//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Сергей Голенко on 15.12.2020.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var arrayEmogi : [String] = ["👽","😻","👻","🤘","🧔🏻","🕵️‍♀️","🥦","🍟","🥗","🏀","🪂","🎮","🛸","🗽","💻","💵","🧿","❤️","🇺🇦","🎊","🪒","🧬","🦠","📷","📱"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayEmogi.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellEmoji", for: indexPath)
        cell.textLabel?.text = arrayEmogi[indexPath.row]
        return cell
    }


}
