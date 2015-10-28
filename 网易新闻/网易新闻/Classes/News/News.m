//
//  News.m
//  网易新闻
//
//  Created by mac on 15/10/28.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "News.h"
#import "NetworkTools.h"

@implementation News

- (instancetype) initWithDict:(NSDictionary *)dict
{
    
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];

    }
    
    return  self;
    
}

+ (instancetype) newsWithDict:(NSDictionary *)dict
{
    return  [[self alloc] initWithDict:dict];
    
}

- (NSString *)description {
    
    NSArray *propertis = @[@"title", @"digest", @"replyCount", @"imgsrc"];
    NSDictionary *dict = [self dictionaryWithValuesForKeys:propertis];
    
    return [NSString stringWithFormat:@"<%@: %p> %@", self.class, self, dict];

}

/// 加载指定URL的新闻数组
+ (void)loadNewsListiWithURLString:(NSString *)urlString {

    [[NetworkTools sharedNetworkTools] GET:urlString parameters:nil success:^(NSURLSessionDataTask * task, NSDictionary *responseObject) {
        
        NSLog(@"%@", responseObject.keyEnumerator.nextObject);
        
        
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        
    }];
    


}


@end
