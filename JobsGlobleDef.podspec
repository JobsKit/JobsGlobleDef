#
#  Be sure to run `pod spec lint Progress.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "JobsGlobleDef"
  spec.version      = "1.0.4"
  spec.summary      = "JobsKit系统共用的宏定义"
  spec.description  = "JobsKit系统共用的宏定义,包含常见的宏定义"
  spec.homepage     = "https://github.com/JobsKit/JobsGlobleDef"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors       = { "alan" => "alan969543491@gmail.com","Jobs" => "lg295060456@vip.qq.com" }
  spec.social_media_url   = "https://github.com/295060456"
  spec.source       = { :git => "https://github.com/JobsKit/JobsGlobleDef.git", :tag => "#{spec.version}" }

  spec.subspec 'MacroDef' do |macroDef|
      # macroDef.source_files = 'JobsGlobleDefCore/Classes/MacroDef/**/*.{h,m}'
      macroDef.source_files = {'JobsGlobleDefCore/Classes/MacroDef/MacroDef_App/**/*.{h,m}',
      'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Cor/**/*.{h,m}',
      JobsGlobleDefCore/Classes/MacroDef/MacroDef_Func/**/*.{h,m}',
      JobsGlobleDefCore/Classes/MacroDef/MacroDef_Size/**/*.{h,m}',
      JobsGlobleDefCore/Classes/MacroDef/MacroDef_Sys/**/*.{h,m}'}
      macroDef.public_header_files = 'JobsGlobleDefCore/Classes/MacroDef/**/*.h'
      macroDef.frameworks = 'UIKit'
      #MacroDef.resource = 'GKPhotoBrowser/GKPhotoBrowser.bundle'
      #MacroDef.dependency 'ZFPlayer/Core'
  end

  spec.subspec 'OtherGlobleDef' do |otherGlobleDef|
    otherGlobleDef.source_files = 'JobsGlobleDefCore/Classes/OtherGlobleDef/**/*.{h,m}'
    otherGlobleDef.public_header_files = 'JobsGlobleDefCore/Classes/OtherGlobleDef/**/*.h'
    otherGlobleDef.frameworks = 'UIKit'
  end

  spec.subspec 'NotificationManager' do |notificationManager|
    notificationManager.source_files = 'JobsGlobleDefCore/Classes/NotificationManager/**/*.{h,m}'
    notificationManager.public_header_files = 'JobsGlobleDefCore/Classes/NotificationManager/**/*.h'
    notificationManager.frameworks = 'UIKit'
  end

  spec.requires_arc = true
  spec.ios.deployment_target = "10.0"
  #spec.dependency "JobsGlobleDef" # https://github.com/JobsKit/JobsGlobleDef  // 添加其他的依赖项

end
