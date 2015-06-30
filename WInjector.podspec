Pod::Spec.new do |s|
  s.name         = "WInjector"
  s.version      = "1.0"
  s.summary      = "Dependency Injection for iOS written in Swift"
  s.homepage     = "https://github.com/jackson13info/WInjector"
  s.license      = "MIT"
  s.requires_arc = true
  s.author       = { "jackson.taylor@willowtreeapps.com" => "jackson.taylor@willowtreeapps.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/jackson13info/WInjector.git", :tag => "1.0" }
  s.source_files  = "WInjector/WInjector.swift"
  s.exclude_files = "Classes/Exclude"
end
