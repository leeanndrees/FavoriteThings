//
//  ViewController.swift
//  FavoriteThings
//
//  Created by DetroitLabs on 8/27/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class FavoriteThingsViewController: UITableViewController {
    let favoriteThingsItems = ["Lu", "Eastern Market", "Baked goods", "Sleeping", "Matt"]

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
        
        return cell
    }

}

