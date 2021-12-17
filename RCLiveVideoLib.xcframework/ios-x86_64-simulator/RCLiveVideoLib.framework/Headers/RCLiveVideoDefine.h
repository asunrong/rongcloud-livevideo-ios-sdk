//
//  RCLiveVideoDefine.h
//  RCE
//
//  Created by shaoshuai on 2021/9/27.
//

#import <Foundation/Foundation.h>

#import "RCLiveVideoCode.h"

#ifndef RCLiveVideoDefine_h
#define RCLiveVideoDefine_h

typedef void(^RCLVResult)(RCLiveVideoCode code);

typedef NS_ENUM(NSInteger, RCLiveVideoMixType) {
    /// 默认模式
    RCLiveVideoMixTypeDefault = 0,
    /// 小窗模式
    RCLiveVideoMixTypeOneToOne,
    RCLiveVideoMixTypeOneToSix,
    /// 格子模式
    RCLiveVideoMixTypeGridTwo,
    RCLiveVideoMixTypeGridThree,
    RCLiveVideoMixTypeGridFour,
    RCLiveVideoMixTypeGridSeven,
    RCLiveVideoMixTypeGridNine,
    /// 自定义模式
    RCLiveVideoMixTypeCustom,
};

typedef NS_ENUM(NSInteger, RCLivevideoFinishReason) {
    RCLivevideoFinishReasonUnkown,
    RCLivevideoFinishReasonLeave,
    RCLivevideoFinishReasonKick,
    RCLivevideoFinishReasonMix,
};

#endif /* RCLiveVideoDefine_h */
