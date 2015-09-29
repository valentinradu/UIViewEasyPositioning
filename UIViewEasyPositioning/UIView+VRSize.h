//
//  UIView+VRSize.h
//  lmr
//
//  Created by Valentin Radu on 11/02/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CGGeometry+Base.h"
#import "UIView+VRAlign.h"
#import <objc/runtime.h>

typedef void (^UIViewSubviewsEnumerator)(UIView* view);

@interface UIView (VRSize)

@property (nonatomic) CGFloat height UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGFloat width UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGSize size UI_APPEARANCE_SELECTOR;
@property (nonatomic) UIEdgeInsets margin UI_APPEARANCE_SELECTOR;
@property (nonatomic, readonly) CGSize sizeThatFitsSubviews;
@property (nonatomic, readonly) CGFloat outerHeight;
@property (nonatomic, readonly) CGFloat outerWidth;
@property (nonatomic, readonly) CGSize outerSize;

+ (instancetype)viewWithSize:(CGSize)size;
+ (instancetype)viewWithSize:(CGSize)size margin:(UIEdgeInsets)margin;
+ (instancetype)viewWithSize:(CGSize)size top:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right;
+ (instancetype)view;
- (void)enumerateSubviews:(UIViewSubviewsEnumerator)enumerator;
- (id)initWithSize:(CGSize)size;
- (void)fitSubviewsWidth;
- (void)fitSubviewsHeight;
- (void)fitSubviews;

@end
