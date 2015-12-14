//
//  DetailViewController.swift
//  TabBarTest
//
//  Created by Andy Obusek on 12/14/15.
//  Copyright © 2015 Obuseme. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBAction func popAndSwitchTabs(sender: AnyObject) {
        CATransaction.begin()
        CATransaction.setCompletionBlock { () -> Void in
            NSNotificationCenter.defaultCenter().postNotificationName("switchTabsNotification", object: nil)
        }
        self.navigationController?.popToRootViewControllerAnimated(true)
        CATransaction.commit()
    }

}
