//
//  UIColor+ALToolkitAdditions
//
//  Created by Andy LaVoy on 2/9/13.
//
//

#import "UIColor+ALToolkitAdditions.h"

@implementation UIColor (ALToolkitAdditions)

+ (UIColor *)colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}


+ (UIColor *)colorWithW:(CGFloat)white {
    return [UIColor colorWithWhite:white/255.0 alpha:1.0f];
}


+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
