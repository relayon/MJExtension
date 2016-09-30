//
//  MJUtils.m
//  MJExtensionExample
//
//  Created by SMC-MAC on 16/9/30.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "MJUtils.h"

static NSDateFormatter* _mjDateFormat;

@implementation MJUtils

+ (NSDateFormatter*)getMJDateFormatter {
    if (_mjDateFormat == nil) {
        _mjDateFormat = [NSDateFormatter new];
        _mjDateFormat.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    }
    
    return _mjDateFormat;
}

+ (void)setMJDateFormatter:(NSDateFormatter*)formatter {
    _mjDateFormat = formatter;
}

///把Date 转换成String
+ (NSString*)stringWithDate:(NSDate*)date {
    NSDateFormatter* formatter = [self.class getMJDateFormatter];
    NSString* datestr = [formatter stringFromDate:date];
    return datestr;
}

///把String 转换成Date
+ (NSDate*)dateWithString:(NSString*)str {
    NSDateFormatter* formatter = [self.class getMJDateFormatter];
    NSDate* date = [formatter dateFromString:str];
    return date;
}

@end
