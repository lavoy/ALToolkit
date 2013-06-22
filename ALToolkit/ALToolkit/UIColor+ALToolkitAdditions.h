//
//  UIColor+ALToolkitAdditions
//
//  Created by Andy LaVoy on 2/9/13.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (ALToolkitAdditions)

+ (UIColor *)colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue;
+ (UIColor *)colorWithW:(CGFloat)white;
+ (UIColor *)colorFromHexString:(NSString *)hexString;

@end
