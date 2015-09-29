//
//  UIView+VRAlign.m
//  lmr
//
//  Created by Valentin Radu on 24/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "UIView+VRAlign.h"

@implementation UIView (VRAlign)

- (CGPoint)bottomLeftAbsolute
{
    return [self.window convertPoint:self.bottomLeft fromView:self.superview];
}

- (void)setBottomLeftAbsolute:(CGPoint)bottomLeft
{
    [self.superview convertPoint:bottomLeft fromView:self.window];
    self.bottomLeft = bottomLeft;
}

- (CGPoint)bottomLeft
{
    CGPoint returnPoint = self.center;
    returnPoint.x -= self.width / 2 + self.margin.left;
    returnPoint.y += self.height / 2 + self.margin.bottom;
    return returnPoint;
}

- (void)setBottomLeft:(CGPoint)bottomLeft
{
    CGPoint center = self.center;
    center.x = bottomLeft.x + self.width / 2 + self.margin.left;
    center.y = bottomLeft.y - self.height / 2 - self.margin.bottom;
    self.center = CGPointIntegral(center);
}

- (CGPoint)topLeft
{
    CGPoint returnPoint = self.center;
    returnPoint.x -= self.width / 2 + self.margin.left;
    returnPoint.y -= self.height / 2 + self.margin.top;
    return returnPoint;
}

- (void)setTopLeft:(CGPoint)topLeft
{
    CGPoint center = self.center;
    center.x = topLeft.x + self.width / 2 + self.margin.left;
    center.y = topLeft.y + self.height / 2 + self.margin.top;
    self.center = CGPointIntegral(center);
}

- (CGPoint)bottomCenter
{
    CGPoint returnPoint = self.center;
    returnPoint.y += self.height / 2 + self.margin.bottom;
    return returnPoint;
}

- (void)setBottomCenter:(CGPoint)bottomCenter
{
    CGPoint center = self.center;
    center.y = bottomCenter.y - self.height / 2 - self.margin.bottom;
    center.x = bottomCenter.x;
    self.center = CGPointIntegral(center);
}

- (CGPoint)bottomRight
{
    CGPoint returnPoint = self.center;
    returnPoint.x += self.width / 2 + self.margin.right;
    returnPoint.y += self.height / 2 + self.margin.bottom;
    return returnPoint;
}

- (void)setBottomRight:(CGPoint)bottomRight
{
    CGPoint center = self.center;
    center.x = bottomRight.x - self.width / 2 - self.margin.right;
    center.y = bottomRight.y - self.height / 2 - self.margin.bottom;
    self.center = CGPointIntegral(center);
}

- (CGPoint)topCenter
{
    CGPoint returnPoint = self.center;
    returnPoint.y -= self.height / 2 + self.margin.top;
    return returnPoint;
}

- (void)setTopCenter:(CGPoint)topCenter
{
    CGPoint center = self.center;
    center.y = topCenter.y + self.height / 2 + self.margin.top;
    center.x = topCenter.x;
    self.center = CGPointIntegral(center);
}

- (CGPoint)topRight
{
    CGPoint returnPoint = self.center;
    returnPoint.x += self.width / 2 + self.margin.right;
    returnPoint.y -= self.height / 2 + self.margin.top;
    return returnPoint;
}

- (void)setTopRight:(CGPoint)topRight
{
    CGPoint center = self.center;
    center.x = topRight.x - self.width / 2 - self.margin.right;
    center.y = topRight.y + self.height / 2 + self.margin.top;
    self.center = CGPointIntegral(center);
}

- (CGPoint)middleLeft
{
    CGPoint returnPoint = self.center;
    returnPoint.x -= self.width / 2 + self.margin.left;
    return returnPoint;
}

- (void)setMiddleLeft:(CGPoint)middleLeft
{
    CGPoint center = self.center;
    center.x = middleLeft.x + self.width / 2 + self.margin.left;
    center.y = middleLeft.y;
    self.center = CGPointIntegral(center);
}

- (CGPoint)middleRight
{
    CGPoint returnPoint = self.center;
    returnPoint.x += self.width / 2 + self.margin.right;
    return returnPoint;
}

- (void)setMiddleRight:(CGPoint)middleRight
{
    CGPoint center = self.center;
    center.x = middleRight.x - self.width / 2 - self.margin.right;
    center.y = middleRight.y;
    self.center = CGPointIntegral(center);
}

- (CGPoint)relativeCenter
{
    return CGPointMake(self.width / 2, self.height / 2);
}

@end
