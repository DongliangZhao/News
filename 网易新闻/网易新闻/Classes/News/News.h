//
//  News.h
//  网易新闻
//
//  Created by mac on 15/10/28.
//  Copyright © 2015年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

/// 新闻标题
@property (nonatomic, copy) NSString *title;
/// 摘要
@property (nonatomic, copy) NSString *digest;
/// 跟帖数量
@property (nonatomic, assign) int replyCount;
/// 配图地址
@property (nonatomic, copy) NSString *imagesrc;

- (instancetype) initWithDict:(NSDictionary *)dict;
+ (instancetype) newsWithDict:(NSDictionary *)dict;

/// 加载指定URL的新闻数组
+ (void)loadNewsListiWithURLString:(NSString *)urlString;

@end
