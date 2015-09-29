//
//  UIView+VRSize.m
//  lmr
//
//  Created by Valentin Radu on 11/02/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "UIView+VRSize.h"

static void* UIViewMargin = &UIViewMargin;

@implementation UIView (VRSize)

+ (instancetype)viewWithSize:(CGSize)size
{
    return [[self alloc] initWithSize:size];
}

+ (instancetype)view
{
    return [self viewWithSize:CGSizeZero];
}

+ (instancetype)viewWithSize:(CGSize)size margin:(UIEdgeInsets)margin
{
    UIView* view = [[self alloc] initWithSize:size];
    view.margin = margin;
    return view;
}
+ (instancetype)viewWithSize:(CGSize)size top:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right
{
    UIView* view = [[self alloc] initWithSize:size];
    UIEdgeInsets margin = UIEdgeInsetsMake(top, left, bottom, right);
    view.margin = margin;
    return view;
}

- (void)enumerateSubviews:(UIViewSubviewsEnumerator)enumerator
{
    enumerator(self);
    for (UIView* subview in self.subviews)
    {
        [subview enumerateSubviews:enumerator];
    }
}

- (id)initWithSize:(CGSize)size
{
    if (size.width < 0 || size.height < 0) return nil;
    CGRect rect = CGRectZero;
    rect.size = size;
    return [self initWithFrame:CGRectIntegral(rect)];
}

- (CGFloat)width
{
    return self.bounds.size.width;
}

- (void)setWidth:(CGFloat)width
{
    if (width < 0) return;
    CGRect newRect = self.bounds;
    newRect.size.width = width;
    self.bounds = CGRectIntegral(newRect);
}

- (CGFloat)height
{
    return self.bounds.size.height;
}

- (void)setHeight:(CGFloat)height
{
    if (height < 0) return;
    CGRect newRect = self.bounds;
    newRect.size.height = height;
    self.bounds = CGRectIntegral(newRect);
}

- (CGSize)size
{
    return self.bounds.size;
}

- (void)setSize:(CGSize)size
{
    if (size.width < 0 || size.height < 0) return;
    CGRect newRect = self.bounds;
    newRect.size = size;
    self.bounds = CGRectIntegral(newRect);
}

- (CGSize)sizeThatFitsSubviews
{
    CGRect sizeThatFitsSubviews = CGRectZero;

    for (UIView* subview in self.subviews)
    {
        CGPoint marginTopLeft = CGPointOffset(subview.topLeft, -subview.margin.left, -subview.margin.top);
        CGPoint marginBottomRight = CGPointOffset(subview.bottomRight, subview.margin.right, subview.margin.bottom);
        CGRect marginRect = CGRectMake(marginTopLeft.x,
                                       marginTopLeft.y,
                                       marginBottomRight.x - marginTopLeft.x,
                                       marginBottomRight.y - marginTopLeft.y);
        sizeThatFitsSubviews = CGRectUnion(sizeThatFitsSubviews, marginRect);
    }

    return CGSizeMake(sizeThatFitsSubviews.origin.x + sizeThatFitsSubviews.size.width,
                      sizeThatFitsSubviews.origin.y + sizeThatFitsSubviews.size.height);
}

- (void)fitSubviewsWidth
{
    self.width = self.sizeThatFitsSubviews.width;
}

- (void)fitSubviewsHeight
{
    self.height = self.sizeThatFitsSubviews.height;
}

- (void)fitSubviews
{
    self.size = self.sizeThatFitsSubviews;
}

- (CGSize)outerSize
{
    return CGSizeInset(self.size, self.margin.left + self.margin.right, self.margin.top + self.margin.bottom);
}

- (CGFloat)outerHeight
{
    return self.outerSize.height;
}

- (CGFloat)outerWidth
{
    return self.outerSize.width;
}

- (void)setMargin:(UIEdgeInsets)margin
{
    objc_setAssociatedObject(self, UIViewMargin, [NSValue valueWithUIEdgeInsets:margin], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIEdgeInsets)margin
{
    return [objc_getAssociatedObject(self, UIViewMargin) UIEdgeInsetsValue];
}

@end
