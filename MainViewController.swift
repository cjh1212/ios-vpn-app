//
//  ViewController.swift
//  VPN
//
//  Created by 최지훈 on 9/22/22.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        let home = UINavigationController(rootViewController: HomeViewController())
        let settings = UINavigationController(rootViewController: SettingsViewController())
        
        home.tabBarItem.image = UIImage(systemName: "globe")
        home.tabBarItem.title = "Connect"
        settings.tabBarItem.image = UIImage(systemName: "gearshape")
        settings.tabBarItem.title = "Settings"
        
        setViewControllers([home, settings], animated: true)
        
        
    }


}

