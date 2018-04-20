
Pod::Spec.new do |s|
  s.name         = "TextAttributes"
  s.version      = "1.0.0"
  s.summary      = "TextAttributes provides simple API for setting text attributes."
  s.description  = "TextAttributes provides simple to use API for setting text attributes for common UIKit components."
  s.homepage     = "https://github.com/bielikb/TextAttributes.git"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Boris Bielik" => "bielik.boris@gmail.com" }
  s.ios.deployment_target   = "10.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/bielikb/TextAttributes.git", :tag => s.version.to_s }
  s.source_files  = 'Source/TextAttributes/TextAttributes/**/*.{h,m,swift}'
  s.swift_version = "4.0"
end
