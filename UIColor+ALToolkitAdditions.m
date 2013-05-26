//
//  UIColor+ALToolkitAdditions
//
//  Created by Andy LaVoy on 2/9/13.
//
//

#import "UIColor+ALToolkitAdditions.h"

@implementation UIColor (ALToolkitAdditions)

+ (UIColor *)r:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue {
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}


@end
