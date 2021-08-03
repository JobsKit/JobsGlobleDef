#
#  Be sure to run `pod spec lint Progress.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "JobsGlobleDef"
  spec.version      = "1.0.2"
  spec.summary      = "JobsKit系统共用的宏定义"
  spec.description  = "JobsKit系统共用的宏定义,包含常见的宏定义"
  spec.homepage     = "https://github.com/JobsKit/JobsGlobleDef"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors       = { "alan" => "alan969543491@gmail.com","Jobs" => "lg295060456@vip.qq.com" }
  spec.social_media_url   = "https://github.com/295060456"
  spec.source       = { :git => "https://github.com/JobsKit/JobsGlobleDef.git", :tag => "#{spec.version}" }

  spec.subspec 'MacroDef' do |MacroDef|
      MacroDef.source_files = 'MacroDef/**/*.{h,m}'
      MacroDef.public_header_files = 'MacroDef/**/*.h'
      MacroDef.frameworks = 'UIKit'
      #MacroDef.resource = 'GKPhotoBrowser/GKPhotoBrowser.bundle'
      #MacroDef.dependency 'ZFPlayer/Core'
  end

  spec.subspec 'OtherGlobleDef' do |OtherGlobleDef|
    OtherGlobleDef.source_files = 'OtherGlobleDef/**/*.{h,m}'
    OtherGlobleDef.public_header_files = 'OtherGlobleDef/**/*.h'
    OtherGlobleDef.frameworks = 'UIKit'
  end

  spec.subspec 'NotificationManager' do |NotificationManager|
    NotificationManager.source_files = 'NotificationManager/**/*.{h,m}'
    NotificationManager.public_header_files = 'NotificationManager/**/*.h'
    NotificationManager.frameworks = 'UIKit'
  end

  spec.requires_arc = true
  spec.ios.deployment_target = "10.0"
  #spec.dependency "JobsGlobleDef" # https://github.com/JobsKit/JobsGlobleDef  // 添加其他的依赖项

end
