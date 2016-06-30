//
//  SettingViewController.swift
//  tips
//
//  Created by Dinesh Gunda on 6/30/16.
//  Copyright © 2016 Dinesh Gunda. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tipPercentSettings: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        tipPercentSettings.selectedSegmentIndex = defaults.integerForKey("settingsTipValue")
        print(defaults.integerForKey("settingsTipValue"))
        print("Settings view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Settings view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        let tipSelectedValue = tipPercentSettings.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        //defaults.setObject(tipPercentSettings, forKey: "tipPercentageValue")
        defaults.setInteger(tipSelectedValue, forKey: "defaultTipValue")
        print(tipSelectedValue)
        print("Settings view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("Settings view did disappear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
