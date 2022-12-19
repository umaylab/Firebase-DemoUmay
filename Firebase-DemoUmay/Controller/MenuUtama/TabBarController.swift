//
//  TabBarController.swift
//  Firebase-DemoUmay
//
//  Created by MacUmay on 19/12/22.
//

import UIKit

class TabBarController: UITabBarController {

    private lazy var menuSatuVC: ItemFeedViewController = {
      let viewcontroller = ItemFeedViewController()
      viewcontroller.tabBarItem = UITabBarItem(title: "Menu1", image: UIImage(systemName: "theatermasks"), tag: 0)
      return viewcontroller
    }()
    
    private lazy var menuDuaVC: SellItemViewController = {
        let viewcontroller = SellItemViewController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Menu2", image: UIImage(systemName: "contextualmenu.and.cursorarrow"), tag: 1)
        return viewcontroller
    }()
    
    private lazy var menuTigaVC: ProfileViewController = {
        let viewcontroller = ProfileViewController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Menu3", image: UIImage(systemName: "3.circle"), tag: 2)
        return viewcontroller
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [menuSatuVC, menuDuaVC, menuTigaVC]
       // navigationController?.isToolbarHidden = false
        //navigationController?.navigationBar.isHidden = false
    }

}
