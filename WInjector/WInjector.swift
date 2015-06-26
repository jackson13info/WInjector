//
//  WInjector.swift
//  WInjector
//
//  Created by buildagent on 6/25/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

import UIKit

protocol WInjectorable {
    
}

func WInject(classVal:AnyClass) -> AnyObject {
    return WInjector.defaultInjector.objectForClass(classVal);
}

class WInjector: NSObject {

    var objectCache:NSMutableDictionary! = nil;
    
    static let defaultInjector = WInjector();
    
    /* Basic init method. Use .defaultInjector */
    override init() {
        objectCache = NSMutableDictionary();
        super.init();
    }
    
    /* Gets the object for the specified class. Use WInject(AnyClass); */
    func objectForClass(classVal:AnyClass) -> AnyObject {
        let stringName = NSStringFromClass(classVal) as String;
        
        if let object = objectCache[stringName] {
            return object;
        }
        
        let object = classVal as! NSObject.Type;
        objectCache[stringName] = object;
        return object;
        
    }
    
    func objectForKeyedSubscript(aKey:AnyObject) -> AnyObject {
        return objectForClass(aKey.self as! AnyClass);
    }
    
    /* Sets the object for the specified class. */
    func setObject(anObject:AnyObject, aClass:AnyClass) {
        let stringName = NSStringFromClass(aClass) as String;
        objectCache[stringName] = anObject;
    }
    
    func setObject(anObject:AnyObject, keyedSubscript:AnyObject) {
        setObject(anObject, aClass: keyedSubscript.self as! AnyClass);
    }
    
    /* Remove the specified object in the cache */
    func invalidateObject(anObject:WInjectorable) {
        let stringName = NSStringFromClass(anObject.self as! AnyClass) as String;
        objectCache.removeObjectForKey(stringName);
    }
    
    /* Remove all of the objects in the cache */
    func invalidateAllObjects() {
        objectCache.removeAllObjects();
    }
    
    
}
