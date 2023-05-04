//
//  ViewController.swift
//  TabBarApp
//
//  Created by Goodwasp on 04.05.2023.
//

import UIKit

class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let pencilVC = viewController as? PencilViewController {
                pencilVC.view.backgroundColor = .systemYellow
            } else if let lassoVC = viewController as? LassoViewController {
                lassoVC.view.backgroundColor = .systemBrown
            } else if let navigationVC = viewController as? UINavigationController {
                guard let tortoiseVC = navigationVC.topViewController as? TortoiseViewController else { return }
                tortoiseVC.view.backgroundColor = .systemGreen
            }
        }
    }
}


