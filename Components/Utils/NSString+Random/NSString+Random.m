//
// Copyright (c) 2011, Davide De Rosa
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

#import "NSString+Random.h"

@implementation NSString (Random)

+ (id)randomStringWithLength:(NSUInteger)length
{
    static NSString *const letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_";
    
    NSMutableString *randomString = [[NSMutableString alloc] initWithCapacity:length];
    for (NSUInteger i = 0; i < length; ++i) {
        [randomString appendFormat:@"%c", [letters characterAtIndex:(arc4random() % [letters length])]];
    }
    return randomString;
}

+ (id)randomHexStringWithLength:(NSUInteger)length
{
    static NSString *const letters = @"abcdef0123456789";
    
    NSMutableString *randomString = [[NSMutableString alloc] initWithCapacity:length];
    for (NSUInteger i = 0; i < length; ++i) {
        [randomString appendFormat:@"%c", [letters characterAtIndex:(arc4random() % [letters length])]];
    }
    return randomString;
}

@end
