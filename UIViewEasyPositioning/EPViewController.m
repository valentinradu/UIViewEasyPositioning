//
//  EPViewController.m
//  UIViewEasyPositioning
//
//  Created by Valentin Radu on 24/01/2013.
//  Copyright (c) 2013 Valentin Radu. All rights reserved.
//

#import "EPViewController.h"

@interface EPViewController ()
@end

@implementation EPViewController{
    NSTimer* _timer;
    NSUInteger _index;
    NSArray* _instructions;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    //we create the first view
    CGRect view1Frame = {0, 0, 200, 200};
    UIView* view1 = [[UIView alloc] initWithFrame:view1Frame];
    view1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view1];
    view1.center = self.view.center;
    
    
    //we create the second view
    CGRect view2Frame = {0, 0, 50, 50};
    UIView* view2 = [[UIView alloc] initWithFrame:view2Frame];
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];
    view2.center = self.view.center;
    
    
    //an ordered set of instructions
    //will be execued with a pause of 1 seconds between them
    _instructions = @[
                    ^{view2.bottomCenter = view1.topCenter;},
                    ^{view2.bottomRight = view1.topLeft;},
                    ^{view2.middleRight = view1.middleLeft;},
                    ^{view2.topRight = view1.bottomLeft;},
                    ^{view2.topCenter = view1.bottomCenter;},
                    ^{view2.topLeft = view1.bottomRight;},
                    ^{view2.middleLeft = view1.middleRight;},
                    ^{view2.bottomLeft = view1.topRight;},
                    ^{view2.center = view1.topCenter;},
                    ^{view2.center = view1.topLeft;},
                    ^{view2.center = view1.middleLeft;},
                    ^{view2.center = view1.bottomLeft;},
                    ^{view2.center = view1.bottomCenter;},
                    ^{view2.center = view1.bottomRight;},
                    ^{view2.center = view1.middleRight;},
                    ^{view2.center = view1.topRight;},
                    ^{view2.topCenter = view1.topCenter;},
                    ^{view2.topLeft = view1.topLeft;},
                    ^{view2.middleLeft = view1.middleLeft;},
                    ^{view2.bottomLeft = view1.bottomLeft;},
                    ^{view2.bottomCenter = view1.bottomCenter;},
                    ^{view2.bottomRight = view1.bottomRight;},
                    ^{view2.middleRight = view1.middleRight;},
                    ^{view2.topRight = view1.topRight;}];
    
    
    
    //set up a simple timer
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(tick) userInfo:nil repeats:YES];
    _index = 0;
}

-(void) tick
{
    
    ((void(^)(void))_instructions[_index])();
    
    
    if (_index<[_instructions count]-1) {
        _index++;
    }
    else{
        _index = 0;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [_timer invalidate];
}

@end
