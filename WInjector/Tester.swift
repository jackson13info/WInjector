//
//  Tester.swift
//  WInjector
//
//  Created by buildagent on 6/25/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

import UIKit

class Tester: NSObject, WInjectorable {
    
    var test:String = "";

    func printVal() {
        print(self.test);
    }
}
