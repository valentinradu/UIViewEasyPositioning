//
//  CGGeometry+Base.h
//  Ext
//
//  Created by Valentin Radu on 30/03/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#ifndef Ext_CGGeometry_Base_h
#define Ext_CGGeometry_Base_h

#import <Foundation/Foundation.h>

static inline CGPoint CGPointIntegral(CGPoint point)
{
    return CGPointMake(roundf(point.x * 2.0) / 2.0, roundf(point.y * 2.0) / 2.0);
}

static inline CGFloat CGSizeRatio(CGSize size)
{
    NSCParameterAssert(size.width && size.height);
    return size.width / size.height;
}

static inline CGSize CGSizeFromRatioWithWidth(CGFloat ratio, CGFloat width)
{
    NSCParameterAssert(ratio);
    return CGSizeMake(width, width / ratio);
}

static inline CGSize CGSizeFromRatioWithHeight(CGFloat ratio, CGFloat height)
{
    NSCParameterAssert(ratio);
    return CGSizeMake(height * ratio, height);
}

static inline CGSize CGSizeInset(CGSize size, CGFloat dx, CGFloat dy)
{
    CGSize newSize = size;
    newSize.width += dx;
    newSize.height += dy;
    return newSize;
}

static inline CGSize CGSizeIntersection(CGSize size1, CGSize size2)
{
    return CGSizeMake(MIN(size1.width, size2.width), MIN(size1.height, size2.height));
}

static inline CGSize CGSizeUnion(CGSize size1, CGSize size2)
{
    return CGSizeMake(MAX(size1.width, size2.width), MAX(size1.height, size2.height));
}

static inline CGSize CGSizeEnclosedInSize(CGSize parentSize, CGSize childSize, CGPoint padding, BOOL enlargeIfNeeded)
{
    NSCParameterAssert(parentSize.width != 0.0f && parentSize.height != 0.0f && childSize.width != 0.0f && childSize.height != 0.0f);

    if (parentSize.width == 0.0f || parentSize.height == 0.0f) return CGSizeZero;
    if (childSize.width == 0.0f || childSize.height == 0.0f) return CGSizeZero;

    parentSize = CGSizeInset(parentSize, -padding.x, -padding.y);

    CGFloat childRatio = childSize.height / childSize.width;
    CGFloat parentRatio = parentSize.height / parentSize.width;

    CGSize newSize = CGSizeZero;

    if (childRatio > parentRatio)
    {

        if (!enlargeIfNeeded)
        {
            if (childSize.height > parentSize.height)
            {
                newSize.height = parentSize.height;
            }
            else
            {
                newSize.height = childSize.height;
            }
        }
        else
        {
            newSize.height = parentSize.height;
        }

        newSize.width = newSize.height / childRatio;
    }
    else
    {

        if (!enlargeIfNeeded)
        {
            if (childSize.width > parentSize.width)
            {
                newSize.width = parentSize.width;
            }
            else
            {
                newSize.width = childSize.width;
            }
        }
        else
        {
            newSize.width = parentSize.width;
        }

        newSize.height = newSize.width * childRatio;
    }

    return newSize;
}

static inline CGRect CGSizeToRect(CGSize size)
{
    return CGRectMake(0, 0, size.width, size.height);
}

static inline CGPoint CGPointOffset(CGPoint point, CGFloat dx, CGFloat dy)
{
    CGPoint newPoint = point;
    newPoint.x += dx;
    newPoint.y += dy;
    return newPoint;
}

static inline CGRect CGRectMakeWithCircle(CGPoint center, CGFloat radius)
{
    return CGRectMake(center.x - radius, center.y + radius, radius * 2.0f, radius * 2.0f);
}

static inline float RadiansToDegrees(float rad)
{
    return rad * (180.0 / M_PI);
}

static inline float DegreesToRadians(float deg)
{
    return deg / 180.0 * M_PI;
}

#endif
