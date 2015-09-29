//
//  UIView+VRAlign.h
//  lmr
//
//  Created by Valentin Radu on 24/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+VRSize.h"

#define UIViewAutoresizingCenter UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin
#define UIViewAutoresizingTopLeft UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin
#define UIViewAutoresizingTopCenter UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin
#define UIViewAutoresizingTopRight UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin
#define UIViewAutoresizingMiddleLeft UIViewAutoresizingTopLeft | UIViewAutoresizingFlexibleTopMargin
#define UIViewAutoresizingMiddleRight UIViewAutoresizingTopRight | UIViewAutoresizingFlexibleTopMargin
#define UIViewAutoresizingBottomLeft UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleRightMargin
#define UIViewAutoresizingBottomCenter UIViewAutoresizingBottomLeft | UIViewAutoresizingFlexibleLeftMargin
#define UIViewAutoresizingBottomRight UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin

@interface UIView (VRAlign)

@property (nonatomic) CGPoint topLeft UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint topCenter UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint topRight UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint middleLeft UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint middleRight UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint bottomLeft UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint bottomCenter UI_APPEARANCE_SELECTOR;
@property (nonatomic) CGPoint bottomRight UI_APPEARANCE_SELECTOR;

@property (readonly) CGPoint relativeCenter;

@end
