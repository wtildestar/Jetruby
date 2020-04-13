//
//  FavoriteChannelsVC+Ext.swift
//  Jetruby
//
//  Created by wtildestar on 12/04/2020.
//  Copyright © 2020 wtildestar. All rights reserved.
//

import UIKit

extension FavoriteChannelsVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath)
        cell.textLabel?.text = "label second controller"
        return cell
    }
}
