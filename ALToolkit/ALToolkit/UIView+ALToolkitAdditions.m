//
//  UIView+ALToolkitAdditions
//
//  Created by Andy LaVoy on 5/12/13.
//  Copyright (c) 2013 Log Cabin. All rights reserved.
//

#import "UIView+ALToolkitAdditions.h"

@implementation UIView (ALToolkitAdditions)

#pragma mark - Frame

- (CGPoint)frameOrigin {
    return self.frame.origin;
}

- (void)setFrameOrigin:(CGPoint)newOrigin {
    self.frame = CGRectMake(newOrigin.x, newOrigin.y, self.frameWidth, self.frameHeight);
}

- (CGSize)frameSize {
    return self.frame.size;
}

- (void)setFrameSize:(CGSize)newSize {
    self.frame = CGRectMake(self.frameX, self.frameY, newSize.width, newSize.height);
}

- (CGFloat)frameX {
    return self.frameOrigin.x;
}

- (void)setFrameX:(CGFloat)newX {
    self.frameOrigin = CGPointMake(newX, self.frameY);
}

- (CGFloat)frameY {
    return self.frameOrigin.y;
}

- (void)setFrameY:(CGFloat)newY {
    self.frameOrigin = CGPointMake(self.frameX, newY);
}

- (CGFloat)frameRight {
    return self.frameX + self.frameWidth;
}

- (void)setFrameRight:(CGFloat)newRight {
    self.frameX = newRight - self.frameWidth;
}

- (CGFloat)frameBottom {
    return self.frameY + self.frameHeight;
}

- (void)setFrameBottom:(CGFloat)newBottom {
    self.frameY = newBottom - self.frameHeight;
}

- (CGFloat)frameWidth {
    return self.frameSize.width;
}

- (void)setFrameWidth:(CGFloat)newWidth {
    self.frameSize = CGSizeMake(newWidth, self.frameHeight);
}

- (CGFloat)frameHeight {
    return self.frameSize.height;
}

- (void)setFrameHeight:(CGFloat)newHeight {
    self.frameSize = CGSizeMake(self.frameWidth, newHeight);
}

#pragma mark - Bounds

- (CGSize)boundsSize {
    return self.bounds.size;
}

- (CGFloat)boundsWidth {
    return self.boundsSize.width;
}

- (CGFloat)boundsHeight {
    return self.boundsSize.height;
}

#pragma mark - Subviews

- (void)removeAllSubviews {
    for (UIView *subView in self.subviews) {
        [subView removeFromSuperview];
    }
}

#pragma mark - Centering

- (void)centerHorizontallyInSuperview {
	self.frameX = roundf(((self.superview.boundsWidth - self.frameWidth) / 2));
}

- (void)centerVerticallyInSuperview {
	self.frameY = roundf(((self.superview.boundsHeight - self.frameHeight) / 2));
}

- (void)centerVerticallyAsideView:(UIView *)view {
	self.frameY = roundf((((view.frameBottom - view.frameY) - self.frameHeight) / 2) + view.frameY);
}

- (void)centerInSuperview {
    [self centerHorizontallyInSuperview];
    [self centerVerticallyInSuperview];
}

- (void)addCenteredSubview:(UIView *)subview {
    [self addSubview:subview];
    [subview centerInSuperview];
}

@end