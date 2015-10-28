//
//  NetworkTools.h
//  网易新闻
//
//  Created by mac on 15/10/28.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface NetworkTools : AFHTTPSessionManager

/// 单例全局访问点
+ (instancetype)sharedNetworkTools;

@end
