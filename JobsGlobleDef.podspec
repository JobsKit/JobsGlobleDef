#
#  Be sure to run `pod spec lint Progress.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "JobsGlobleDef"

  s.version      = "1.0.0"

  s.summary      = "JobsKit系统共用的宏定义"

  s.description  = "JobsKit系统共用的宏定义,包含常见的宏定义"

  s.homepage     = "https://github.com/JobsKit/JobsGlobleDef"

  s.license      = "MIT"

  s.author       = { "alan" => "alan969543491@gmail.com" }

  s.source       = { :git => "https://github.com/JobsKit/JobsGlobleDef.git", :tag => "#{s.version}" }

  s.source_files = "MacroDef/**/*.{h,m}", "OtherGlobleDef/**/*.{h,m}","NotificationManager/**/*.{h,m}"

  s.requires_arc = true

  s.ios.deployment_target = "10.0"

end
