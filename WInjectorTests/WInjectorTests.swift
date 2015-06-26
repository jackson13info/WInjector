//
//  WInjectorTests.swift
//  WInjectorTests
//
//  Created by buildagent on 6/25/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

import XCTest
import WInjector

class WInjectorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        let tester = Tester();
        tester.test = "First";
        WInjector.defaultInjector.setObject(tester, aClass: Tester.self);
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInjection() {
        var tester = WInject(Tester.self) as! Tester;
        
        assert((tester.test == "First"));
        
        tester.test = "Second";
        
        self.measureBlock { () -> Void in
            tester = WInject(Tester.self) as! Tester;
        }
        
        assert((tester.test == "Second"));
    }
    
    func testSetting() {
        WInjector.defaultInjector.setObject(Tester(), aClass: Tester.self);
        WInjector.defaultInjector.setObject(NSString(), aClass: NSString.self);
        WInjector.defaultInjector.setObject(UILabel(), aClass: UILabel.self);
        WInjector.defaultInjector.setObject(UITextField(), aClass: UITextField.self);
        
        assert(WInject(UITextField.self) is UITextField);
        assert(WInject(UILabel.self) is UILabel);
        assert(WInject(NSString.self) is NSString);
        assert(WInject(Tester.self) is Tester);
    }
    
    func testInvalidateObject() {
        WInjector.defaultInjector.setObject(Tester(), aClass: Tester.self);
        
        assert(!(WInjector.defaultInjector.isCacheEmpty()));
        
        WInjector.defaultInjector.invalidateObject(Tester.self);
        
        assert((WInjector.defaultInjector.isCacheEmpty()));
    }
    
    func testAllInvalidating() {
        WInjector.defaultInjector.setObject(Tester(), aClass: Tester.self);
        WInjector.defaultInjector.setObject(NSString(), aClass: NSString.self);
        WInjector.defaultInjector.setObject(UILabel(), aClass: UILabel.self);
        WInjector.defaultInjector.setObject(UITextField(), aClass: UITextField.self);
        
        assert(!(WInjector.defaultInjector.isCacheEmpty()));
        
        WInjector.defaultInjector.invalidateAllObjects();

        assert((WInjector.defaultInjector.isCacheEmpty()));
    }
    
}
