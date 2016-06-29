
#import <UIKit/UIKit.h>

/*!
 @category UIColor
 @abstract UIColor的Category，主要用于转换16进制颜色类别，生成包含随机颜色
 */
@interface UIColor (HexColor)

/*!
 @method
 @abstract 通过16进制颜色转换RGB色
 @discussion 传递参数格式必须为0f0f0f格式，不区分大小写，不带0X
 @param hexColor 16进制颜色字符串
 @result UIColor *
 */
+ (UIColor *)hexColor:(NSString*)hexColor;

/*!
 @method
 @abstract 生成随机颜色
 @discussion 两次生成的随机颜色不一样
 @result UIColor *
 */
+(UIColor *)randomColor;

@end
