Pod::Spec.new do |spec|
  spec.name         = "SwiftComponents"
  spec.version      = "0.0.2"
  spec.summary      = "Swift Components."
  spec.description  = "Swift Basic Components."
  spec.homepage     = "https://github.com/Lee827/SwiftComponents"
  spec.license      = "MIT"
  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  spec.author       = { "Elmo Lee" => "elmolee1992827@gmail.com" }
  spec.source       = { :git => "https://github.com/Lee827/SwiftComponents.git", :tag => spec.version }
  spec.source_files  = "SwiftComponents/**/*.{h,m,swift}"
end