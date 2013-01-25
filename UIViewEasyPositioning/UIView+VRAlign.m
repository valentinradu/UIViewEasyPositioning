//
//  UIView+VRAlign.m
//  lmr
//
//  Created by Valentin Radu on 24/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "UIView+VRAlign.h"

@implementation UIView (VRAlign)

-(CGFloat) width
{
    return self.frame.size.width;
}

-(void) setWidth:(CGFloat)width
{
    CGRect newRect = self.frame;
    newRect.size.width = width;
    self.frame = newRect;
}

-(CGFloat) height{
    return self.frame.size.height;
}

-(void) setHeight:(CGFloat)height
{
    CGRect newRect = self.frame;
    newRect.size.height = height;
    self.frame = newRect;
}

-(CGPoint) bottomLeft
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.y += self.frame.size.height;
    return returnPoint;
}

-(void) setBottomLeft:(CGPoint)bottomLeft
{
    CGRect newRect = self.frame;
    newRect.origin.x = bottomLeft.x;
    newRect.origin.y = bottomLeft.y - self.frame.size.height;
    self.frame = newRect;
}

-(CGPoint) topLeft
{
    return self.frame.origin;
}

-(void)setTopLeft:(CGPoint)topLeft
{
    CGRect newRect = self.frame;
    newRect.origin.x = topLeft.x;
    newRect.origin.y = topLeft.y;
    self.frame = newRect;
}

-(CGPoint) bottomCenter
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.y += self.frame.size.height;
    returnPoint.x += self.frame.size.width/2.0f;
    return returnPoint;
}

-(void) setBottomCenter:(CGPoint)bottomCenter
{
    CGRect newRect = self.frame;
    newRect.origin.x = bottomCenter.x - self.frame.size.width/2.0f;
    newRect.origin.y = bottomCenter.y - self.frame.size.height;
    self.frame = newRect;
}

-(CGPoint) bottomRight
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.y += self.frame.size.height;
    returnPoint.x += self.frame.size.width;
    return returnPoint;
}

-(void) setBottomRight:(CGPoint)bottomRight
{
    CGRect newRect = self.frame;
    newRect.origin.x = bottomRight.x - self.frame.size.width;
    newRect.origin.y = bottomRight.y - self.frame.size.height;
    self.frame = newRect;
}

-(CGPoint) topCenter
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.x += self.frame.size.width/2.0f;
    return returnPoint;
}

-(void) setTopCenter:(CGPoint)topCenter
{
    CGRect newRect = self.frame;
    newRect.origin.x = topCenter.x - self.frame.size.width/2.0f;
    newRect.origin.y = topCenter.y;
    self.frame = newRect;
}

-(CGPoint) topRight
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.x += self.frame.size.width;
    return returnPoint;
}

-(void) setTopRight:(CGPoint)topRight
{
    CGRect newRect = self.frame;
    newRect.origin.x = topRight.x - self.frame.size.width;
    newRect.origin.y = topRight.y;
    self.frame = newRect;
}

-(CGPoint) middleLeft
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.y += self.frame.size.height/2.0f;
    return returnPoint;
}

-(void) setMiddleLeft:(CGPoint)middleLeft
{
    CGRect newRect = self.frame;
    newRect.origin.y = middleLeft.y - self.frame.size.height/2;
    newRect.origin.x = middleLeft.x;
    self.frame = newRect;
}

-(CGPoint) middleRight
{
    CGPoint returnPoint = self.frame.origin;
    returnPoint.x += self.frame.size.width;
    returnPoint.y += self.frame.size.height/2.0f;
    return returnPoint;
}

-(void) setMiddleRight:(CGPoint)middleRight
{
    CGRect newRect = self.frame;
    newRect.origin.x = middleRight.x - self.frame.size.width;
    newRect.origin.y = middleRight.y - self.frame.size.height/2;
    self.frame = newRect;
}

@end
