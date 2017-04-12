//
//  NSArray+Log.m
//  OLPrint
//
//  Created by  olive on 2017/4/11.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)
- (NSString *)descriptionWithLocale:(id)locale {
    // 开头有个(
    NSMutableString *string = [NSMutableString stringWithString:@"(\n"];
    // 遍历所有的元素
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [string appendFormat:@"\t%@,\n", obj];
    }];
    // 结尾有个)
    [string appendString:@")"];
    // 查找最后一个逗号
    NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound) {
        [string deleteCharactersInRange:range];
    }
    return string;
}
@end
