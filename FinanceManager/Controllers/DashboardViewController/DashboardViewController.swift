//
//  DashboardViewController.swift
//  FinanceManager
//
//  Created by Bercik on 28/12/2023.
//

import UIKit

class DashboardViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        configureTabs()
        setupMiddleButton()
        // Do any additional setup after loading the view.
    }
    
    private func configureTabs() {
        let walletVC = WalletViewController()
        let settingsVC = SettingsViewController()
        
        walletVC.tabBarItem.image = UIImage(systemName: "house.fill")
        settingsVC.tabBarItem.image = UIImage(systemName: "gearshape")
        
        walletVC.tabBarItem.title = "Wallet"
        settingsVC.tabBarItem.title = "Settings"
        
        let walletNavigation = UINavigationController(rootViewController: walletVC)
        let settingsNavigation = UINavigationController(rootViewController: settingsVC)
        
        tabBar.tintColor = UIColor.white
        tabBar.unselectedItemTintColor = UIColor(named: "inactiveColor")
        tabBar.backgroundColor = UIColor(named: "cardColor")
        tabBar.layer.cornerRadius = 20
        tabBar.itemSpacing = UIScreen.main.bounds.width / 4
       
        
        setViewControllers([walletNavigation,  settingsNavigation], animated: true)
    }
    
    func setupMiddleButton() {

        let middleBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-50, y: -30, width: 100, height: 100))

        //STYLE THE BUTTON YOUR OWN WAY
        middleBtn.setImage(UIImage(named: "add.png"), for: .normal)

        //add to the tabbar and add click event
        self.tabBar.addSubview(middleBtn)
       // middleBtn.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)

        self.view.layoutIfNeeded()
    }
    
}
