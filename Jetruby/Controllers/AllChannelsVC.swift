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
    private func setupTabbar() {
        self.tabBarController?.tabBar.items?[0].image = UIImage(named: "0")
        self.tabBarController?.tabBar.items?[1].image = UIImage(named: "1")
        self.tabBarController?.tabBar.items?[0].title = "All News"
        self.tabBarController?.tabBar.items?[1].title = "Favorites"
        self.tabBarController?.tabBar.barTintColor = .gray
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
