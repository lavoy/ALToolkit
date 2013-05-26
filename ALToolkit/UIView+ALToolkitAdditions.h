//
//  UIView+ALToolkitAdditions
//
//  Created by Andy LaVoy on 5/12/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ALToolkitAdditions)

// Frame
@property (nonatomic) CGPoint frameOrigin;
@property (nonatomic) CGSize frameSize;

@property (nonatomic) CGFloat frameX;
@property (nonatomic) CGFloat frameY;

@property (nonatomic) CGFloat frameRight;
@property (nonatomic) CGFloat frameBottom;

@property (nonatomic) CGFloat frameWidth;
@property (nonatomic) CGFloat frameHeight;

@property (nonatomic, readonly) CGSize boundsSize;
@property (nonatomic, readonly) CGFloat boundsWidth;
@property (nonatomic, readonly) CGFloat boundsHeight;

// Subviews
- (void)removeAllSubviews;

// Centering
- (void)centerHorizontallyInSuperview;
- (void)centerVerticallyInSuperview;
- (void)centerInSuperview;
- (void)addCenteredSubview:(UIView *)subview;

@end