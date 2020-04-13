//
//  AllChannelsVC.swift
//  Jetruby
//
//  Created by wtildestar on 12/04/2020.
//  Copyright © 2020 wtildestar. All rights reserved.
//

import UIKit

class AllChannelsVC: UIViewController {
    
    // MARK: - Properties
    let reuseId = "AllChannelsCell"
    let tabSeparationVC = TabSeparationVC()

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "All channels news"
        setupTabbar()
    }
    
    // MARK: - Methods
    func setupTabbar() {
        tabSeparationVC.updateTabBarItem(tab: 0, image: UIImage(systemName: "pencil"))
        tabSeparationVC.updateTabBarItem(tab: 1, image: UIImage(systemName: "trash"))
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
