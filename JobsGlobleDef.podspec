#
#  Be sure to run `pod spec lint Progress.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "JobsGlobleDef"  # 项目名
  spec.version      = "1.0.0"  # 版本号
  spec.summary      = "JobsKit系统共用的宏定义"  # 简单描述
  spec.description  = "JobsKit系统共用的宏定义,包含常见的宏定义"  # 详细描述
  spec.homepage     = "https://github.com/JobsKit/JobsGlobleDef"# 项目的主页
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }  # 项目遵守的协议
  spec.authors       = { "alan" => "alan969543491@gmail.com","Jobs" => "lg295060456@vip.qq.com" }  # 作者的邮箱
  spec.social_media_url   = "https://github.com/295060456"
  spec.source       = { :git => "https://github.com/JobsKit/JobsGlobleDef.git", :tag => "#{spec.version}" }# git仓库的https地址
  spec.requires_arc = true
  spec.ios.deployment_target = "10.0"# 项目的最低版本支持
  #spec.dependency "JobsGlobleDef" # https://github.com/JobsKit/JobsGlobleDef  // 添加其他的依赖项

  spec.subspec 'MacroDef' do |macroDef|
      # 表示源文件的路径，这个路径是相对podspec文件而言的
      # macroDef.source_files = 'JobsGlobleDefCore/Classes/MacroDef/**/*.{h,m}'# ❤️如果包含子文件夹则需要将这一句话屏蔽
      # 子文件夹的写法（一定要把父文件夹的source_files给注释掉）
      macroDef.subspec 'MacroDef_App' do |macroDef_App|
        macroDef_App.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_App/**/*'
      end

      macroDef.subspec 'MacroDef_Cor' do |macroDef_Cor|
        macroDef_Cor.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Cor/**/*'
      end

      macroDef.subspec 'MacroDef_Func' do |macroDef_Func|
        macroDef_Func.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Func/**/*'
      end

      macroDef.subspec 'MacroDef_Size' do |macroDef_Size|
        # macroDef_Size.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Size/**/*'
        macroDef_Size.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Size/*.{h,m}'

        # AppleProductsScreenSize 苹果产品尺寸
        macroDef_Size.subspec 'AppleProductsScreenSize' do |appleProductsScreenSize|
          appleProductsScreenSize.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Size/appleProductsScreenSize/**/*'
        end

      end

      macroDef.subspec 'MacroDef_Sys' do |macroDef_Sys|
        macroDef_Sys.source_files = 'JobsGlobleDefCore/Classes/MacroDef/MacroDef_Sys/**/*'
      end

      # macroDef.public_header_files = 'JobsGlobleDefCore/Classes/MacroDef/**/*.h'
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
end
