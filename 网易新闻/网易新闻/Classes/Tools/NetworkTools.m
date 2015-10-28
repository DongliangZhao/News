//
//  NetworkTools.m
//  网易新闻
//
//  Created by mac on 15/10/28.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

/// 单例
+ (instancetype)sharedNetworkTools {

    static NetworkTools *instace;
    
    static dispatch_once_t onceToken;

    
    dispatch_once(&onceToken, ^{
        
        NSURL *url = [NSURL URLWithString:@"http://c.m.163.com/nc/article/headline/"];
        
        instace = [[self alloc] initWithBaseURL:url];
        
        instace.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
        
    });

    return instace;

}

@end
