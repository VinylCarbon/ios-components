//
// Copyright (c) 2014, Davide De Rosa
// All rights reserved.
//
// This code is distributed under the terms and conditions of the BSD license.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
// list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
// this list of conditions and the following disclaimer in the documentation and/or
// other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
// ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "CALayer+Borders.h"

@implementation CALayer (Borders)

- (CALayer *)addTopBorderWithColor:(CGColorRef)color width:(CGFloat)width
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, self.frame.size.width, width);
    layer.backgroundColor = color;
    [self addSublayer:layer];
    return self;
}

- (CALayer *)addRightBorderWithColor:(CGColorRef)color width:(CGFloat)width
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height);
    layer.backgroundColor = color;
    [self addSublayer:layer];
    return self;
}

- (CALayer *)addBottomBorderWithColor:(CGColorRef)color width:(CGFloat)width
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, self.frame.size.height - width, self.frame.size.width, width);
    layer.backgroundColor = color;
    [self addSublayer:layer];
    return self;
}

- (CALayer *)addLeftBorderWithColor:(CGColorRef)color width:(CGFloat)width
{
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, 0, width, self.frame.size.height);
    layer.backgroundColor = color;
    [self addSublayer:layer];
    return self;
}

- (void)addBorders:(NSUInteger)borders color:(CGColorRef)color width:(CGFloat)width
{
    if (borders & CALayerBorderPositionTop) {
        [self addTopBorderWithColor:color width:width];
    }
    if (borders & CALayerBorderPositionRight) {
        [self addRightBorderWithColor:color width:width];
    }
    if (borders & CALayerBorderPositionBottom) {
        [self addBottomBorderWithColor:color width:width];
    }
    if (borders & CALayerBorderPositionLeft) {
        [self addLeftBorderWithColor:color width:width];
    }
}

@end
