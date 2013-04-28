//
//  Profile.m
//  StaticDemo
//
//  Created by kimpeng on 13-4-28.
//  Copyright (c) 2013年 kimpeng. All rights reserved.
//

#import "Profile.h"

@implementation Profile

- (void)dealloc
{
    [_name release];
    [_sex release];
    [_level release];
    
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        
    }
    
    return self;
}

@end
