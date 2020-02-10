require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-encrypted-storage"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-encrypted-storage
                   DESC
  s.homepage     = "https://github.com/emeraldsanto/react-native-encrypted-storage"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Yanick" => "yanick.belanger@yahoo.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/emeraldsanto/react-native-encrypted-storage.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

