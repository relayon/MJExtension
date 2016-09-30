//
//  MJUtils.h
//  MJExtensionExample
//
//  Created by SMC-MAC on 16/9/30.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJUtils : NSObject

///把Date 转换成String
+ (NSString*)stringWithDate:(NSDate*)date;
///把String 转换成Date
+ (NSDate*)dateWithString:(NSString*)str;

// 获取日期格式
+ (NSDateFormatter*)getMJDateFormatter;
// 设置日期格式
+ (void)setMJDateFormatter:(NSDateFormatter*)formatter;

@end
