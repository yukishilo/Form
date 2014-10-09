//
//  REMAFielsetBackgroundCollectionReusableView.m
//  REMAForms
//
//  Created by Elvis Nunez on 10/6/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "REMAFielsetBackgroundView.h"

#import "UIColor+ANDYHex.h"

@interface REMAFielsetBackgroundView ()

@end

@implementation REMAFielsetBackgroundView

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect
{
    UIRectCorner corners = UIRectCornerBottomLeft | UIRectCornerBottomRight;

    UIBezierPath *rectanglePath = [UIBezierPath bezierPathWithRoundedRect:rect
                                                        byRoundingCorners:corners
                                                              cornerRadii:CGSizeMake(5.0f, 5.0f)];
    [rectanglePath closePath];

    [[UIColor whiteColor] setFill];
    [rectanglePath fill];
}

#pragma mark - Initializers

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    self.backgroundColor = [UIColor colorFromHex:@"DAE2EA"];

    return self;
}

@end