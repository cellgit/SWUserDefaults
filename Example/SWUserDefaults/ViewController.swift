//
//  ViewController.swift
//  SWUserDefaults
//
//  Created by liuhongli on 12/15/2022.
//  Copyright (c) 2022 liuhongli. All rights reserved.
//

import UIKit
import SWUserDefaults

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // save Int value to UserDefaults
        SWUserDefaults.save(3, "key1")
        // get Int value from UserDefaults
        let value = SWUserDefaults.get("key1", Int.self)
        // delete from UserDefaults
        SWUserDefaults.delete("key1")


        // save dict value to UserDefaults
        let dict: [String : Any] = ["name": "Lily", "age": 18]
        SWUserDefaults.save(dict, "key2")
        // get dict value from UserDefaults
        let dictValue = SWUserDefaults.get("key2", [String : Any].self)
        // delete from UserDefaults
        SWUserDefaults.delete("key2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

