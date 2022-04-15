
Pod::Spec.new do |s|


    s.name         = "RCLiveVideoLib"
    s.version      = "2.1.0.60"
    s.summary      = 'live video'


    s.description  = <<-DESC
                        live video dependency IM & RTC
                        DESC

    yg_zipURl="https://asunshinecitic-generic.pkg.coding.net/SpecsRepos/rc_xcframework/#{s.name}?version=#{s.version}"

    s.homepage     = "https://www.rongcloud.cn/"
        s.license      = { :type => "Copyright", :text => "Copyright 2022 RongCloud" }
    s.author       = { "shaoshuai" => "https://www.rongcloud.cn/" }
    s.social_media_url   = "https://www.rongcloud.cn/"
    # s.source       = { :git => 'https://github.com/asunrong/rongcloud-livevideo-ios-sdk.git', :tag => s.version.to_s }
    s.source         = { :https => "https://asunshinecitic-generic.pkg.coding.net/SpecsRepos/rc_xcframework/#{s.name}?version=#{s.version}"}

    s.requires_arc = true
    s.static_framework = true
    
    s.ios.deployment_target = '11.0'
  
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'VALID_ARCHS' => 'arm64 x86_64',
        'ENABLE_BITCODE' => 'NO'
    }

    s.vendored_frameworks = 'RCLiveVideoLib.xcframework'

    # RCLiveVideoLib.xcframework/ios-arm64/RCLiveVideoLib.framework/Headers
    s.source_files ="#{s.name}.xcframework/ios-arm64/#{s.name}.framework/Headers/**.h"
    # 给FW添加Headr到XCode展示
    s.public_header_files = "#{s.name}.xcframework/ios-arm64/#{s.name}.framework/Headers/**.h"
    
     # , "RCLiveVideoLib.xcframework/ios-x86_64-simulator/RCLiveVideoLib.framework/Headers/**.h"

    s.dependency 'RongCloudRTC/RongRTCLib'
    s.dependency 'RongCloudIM/IMLib'

end

