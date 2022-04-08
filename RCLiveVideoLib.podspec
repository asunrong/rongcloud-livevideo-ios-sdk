
Pod::Spec.new do |s|


    s.name         = "RCLiveVideoLib"
    s.version      = "2.1.0.3"
    s.summary      = 'live video'


    s.description  = <<-DESC
                        live video dependency IM & RTC
                        DESC


    s.homepage     = "https://www.rongcloud.cn/"
        s.license      = { :type => "Copyright", :text => "Copyright 2022 RongCloud" }
    s.author       = { "shaoshuai" => "https://www.rongcloud.cn/" }
    s.social_media_url   = "https://www.rongcloud.cn/"
    s.source       = { :git => 'https://github.com/rongcloud/rongcloud-livevideo-ios-sdk.git', :tag => s.version.to_s }
    
    s.requires_arc = true
    s.static_framework = true
    
    s.ios.deployment_target = '11.0'
  
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
        'VALID_ARCHS' => 'arm64 x86_64',
        'ENABLE_BITCODE' => 'NO'
    }

    s.vendored_frameworks = 'RCLiveVideoLib.xcframework'

    s.dependency 'RongCloudRTC/RongRTCLib'
    s.dependency 'RongCloudIM/IMLib'

end

