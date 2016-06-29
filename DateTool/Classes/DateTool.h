//
//  DateTool.h
//  CDITVDuke
//
//  Created by chen on 14/12/25.
//  Copyright (c) 2014年 CDITVD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateTool : NSObject

+(NSString *)formatDate:(double)timesp;
+(NSString *)formatDateToSecond:(double)timesp;
+(NSString *)formatDateToMin:(double)timesp;
+(NSString *)formatDateMMDDHHMM:(double)timesp;
+(NSString *)formatNewsDate:(long long)time;
@end
