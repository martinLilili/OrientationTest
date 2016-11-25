//
//  SecondViewController.swift
//  OrientationTest
//
//  Created by UBT on 2016/11/25.
//  Copyright © 2016年 martin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = UIInterfaceOrientation.landscapeRight.rawValue
        (UIApplication.shared.delegate as! AppDelegate).orientationPortrait = false
        let sysyemValue = UIDevice.current.value(forKey: "orientation")
        print("system value = \(sysyemValue)")
        print("setValue = \(value)")
        UIDevice.current.setValue(UIInterfaceOrientation.unknown.rawValue, forKey: "orientation")
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let value = UIInterfaceOrientation.portrait.rawValue
        (UIApplication.shared.delegate as! AppDelegate).orientationPortrait = true
        UIDevice.current.setValue(value, forKey: "orientation")
    }

}
