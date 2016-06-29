//
//  DateTool.m
//  CDITVDuke
//
//  Created by chen on 14/12/25.
//  Copyright (c) 2014年 CDITVD. All rights reserved.
//

#import "DateTool.h"

@implementation DateTool


+(NSString *)formatDate:(double)timesp
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timesp];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
    
}

+(NSString *)formatDateToSecond:(double)timesp
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timesp];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
    
}

+(NSString *)formatDateToMin:(double)timesp{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timesp];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString *)formatDateMMDDHHMM:(double)timesp{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd HH:mm"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:timesp];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

+(NSString *)formatNewsDate:(long long)time{
    
    NSString *dateStr = nil;
    long long nowTime = [[NSDate date] timeIntervalSince1970];
    if (time + 60 >= nowTime) {
        dateStr = [NSString stringWithFormat:@"刚刚"];
    } else if (time + 60 * 60 >= nowTime) {
        long long minute = (nowTime - time) / 60;
        dateStr = [NSString stringWithFormat:@"%lld分钟前", minute];
    } else if (time + 60 * 60 * 24 >= nowTime) {
        long long hour = (nowTime - time) / (60 * 60);
        dateStr = [NSString stringWithFormat:@"%lld小时前", hour];
    } else {
        dateStr = [NSString stringWithFormat:@"%@", [DateTool formatDateMMDDHHMM:time]];
    }
    
    return dateStr;
}

@end
