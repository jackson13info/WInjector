//
//  ViewController.swift
//  WInjector
//
//  Created by buildagent on 6/25/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

import UIKit

var test = "";

class ViewController: UIViewController, WInjectorable {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sample = WInject(Tester.self) as! Tester;
        sample.printVal();
    }

    func printTest() {
        print(test);
    }
    
    class func setString(string:String) {
        test = string;
    }


}

