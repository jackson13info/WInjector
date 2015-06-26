Pod::Spec.new do |s|
  s.name         = "WInjector"
  s.version      = "1.0"
  s.summary      = ""

  s.description  = <<-DESC
                   A longer description of WInjector in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/jackson13info/WInjector"
  s.license      = "MIT"
  s.author             = { "jackson.taylor@willowtreeapps.com" => "jackson.taylor@willowtreeapps.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/jackson13info/WInjector.git", :tag => "1.0" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
end
