require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name = "react-native-month-year-picker"
  s.version = package["version"]
  s.summary = package["description"]
  s.description = <<-DESC
                  React-native-month-year-picker-gregorian
                   DESC
  s.homepage = "https://github.com/sfukuyoshi/react-native-month-year-gregorian"
  # brief license entry:
  s.license = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors = { "Sakura Fukuyoshi" => "sakura.fukuyoshi@gmail..com" }
  s.platforms = { :ios => "9.0" }
  s.source = { :git => "https://github.com/sfukuyoshi/react-native-month-year-gregorian.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end
