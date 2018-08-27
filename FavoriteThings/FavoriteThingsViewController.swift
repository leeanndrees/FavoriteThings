//
//  ViewController.swift
//  FavoriteThings
//
//  Created by DetroitLabs on 8/27/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class FavoriteThingsViewController: UITableViewController {
    var favoriteThingsItems = ["Lu", "Baked goods", "Sleeping", "Matt", "Chase"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteThingsItem", for: indexPath)
        
        cell.textLabel?.text = favoriteThingsItems[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.favoriteThingsItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

