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

    // возвращает кол-во строк в таблице
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayEmogi.count
    }
    
    
    //cоздает ячейку,для динамического обновления данных
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(arrayEmogi[indexPath.row]) \(arrayEmogi[indexPath.row].unicodeScalars.first!.properties.name!.capitalized)"
        return cell
    }
    
    
    //захватываем выбранный item в выбранной ячейке
    //и передаем ее в segue
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedEmoji = arrayEmogi[indexPath.row]
        performSegue(withIdentifier:"0000", sender:selectedEmoji)
    }
    
    
    //передаем новый захваченный эмодзи во второй контоллер
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let definitionVC = segue.destination as! DeteilEmojiViewController
        let selectedEmoji = sender as! String
        definitionVC.item = selectedEmoji
    }
}
