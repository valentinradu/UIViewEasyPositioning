//
//  UIView+VRAlign.h
//  lmr
//
//  Created by Valentin Radu on 24/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VRAlign)

@property (nonatomic, assign) CGPoint topLeft;
@property (nonatomic, assign) CGPoint topCenter;
@property (nonatomic, assign) CGPoint topRight;
@property (nonatomic, assign) CGPoint middleLeft;
@property (nonatomic, assign) CGPoint middleRight;
@property (nonatomic, assign) CGPoint bottomLeft;
@property (nonatomic, assign) CGPoint bottomCenter;
@property (nonatomic, assign) CGPoint bottomRight;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat width;

@end
