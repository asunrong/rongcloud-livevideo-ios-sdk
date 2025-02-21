
Pod::Spec.new do |s|


    s.name         = "RCLiveVideoLib"
    s.version      = "2.1.0.60"
    s.summary      = 'live video'


    s.description  = <<-DESC
                        live video dependency IM & RTC
                        DESC

    yg_zipURl="https://github.com/asunrong/rongcloud-livevideo-ios-sdk/files/8495253/RCLiveVideoLib.zip"

    s.homepage     = "https://www.rongcloud.cn/"
        s.license      = { :type => "Copyright", :text => "Copyright 2022 RongCloud" }
    s.author       = { "asunshine" => "https://www.rongcloud.cn/" }
    s.social_media_url   = "https://www.rongcloud.cn/"
    # s.source       = { :git => 'https://github.com/asunrong/rongcloud-livevideo-ios-sdk.git', :tag => s.version.to_s }
    s.source         = { :http => yg_zipURl }

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
    
    # s.source_files= "Headers/**.h"
    # s.public_header_files = "Headers/**.h"
    s.dependency 'RongCloudRTC/RongRTCLib'
    s.dependency 'RongCloudIM/IMLib'

end

