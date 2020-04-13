//
//  TabSeparationVC.swift
//  Jetruby
//
//  Created by wtildestar on 12/04/2020.
//  Copyright © 2020 wtildestar. All rights reserved.
//

import UIKit

class TabSeparationVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = .systemGray2
    }
    

    func updateTabBarItem(tab: Int, image: UIImage?) {
        guard let tabItems = tabBar.items, tab < tabItems.count && tab >= 0
            else { return }

        let tabItem = tabItems[tab]
        tabItem.image = image?.withRenderingMode(.alwaysOriginal)
        tabItem.selectedImage = tabItem.image
        
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
