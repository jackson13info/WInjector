# WInjector
Dependency Injection Library Written in Swift

# Built off Of JInjector
https://github.com/jeremytregunna/JInjector

# Basic Use

## Step One Create the Object to Inject
```swift
let testObject = Tester();
```
(I know you don't need semi colons, but I will always add them)

## Step Two Inject the Object
```swift
WInjector.defaultInjector.setObject(testObject, aClass: Tester.self);
```

## Step Three Whenever you Need the Object Inject it Into the Code
```swift
//Some code
...
let testObject = WInject(Tester.self);
...
//Other code
```

Now that you have injected the object, `testObject` will have everything the same as the first time you injected it. Values changed within it will be perserved throughout each injection. This way you can have global objects easily with only one line of code. 


Podspec coming soon
