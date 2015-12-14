//
//  FirstViewController.swift
//  TabBarTest
//
//  Created by Andy Obusek on 12/14/15.
//  Copyright © 2015 Obuseme. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "switchTabs", name: "switchTabsNotification", object: nil)
    }

    func switchTabs() {
        self.tabBarController?.selectedIndex = 1
    }

}

