require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RCTSearchApi"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/debitoor/react-native-search-api-ios"

  s.license      = "MIT"
  s.authors      = { "Arfaoui Hamouda" => "hamouda@debitoor.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/debitoor/react-native-search-api.git" }
  s.source_files  = "ios/RCTSearchApi/*.{h,m}"

  s.dependency 'React'  
  s.dependency 'React-RCTImage'

end