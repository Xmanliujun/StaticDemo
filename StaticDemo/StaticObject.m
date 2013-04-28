//
//  StaticObject.m
//  StaticDemo
//
//  Created by kimpeng on 13-4-28.
//  Copyright (c) 2013年 kimpeng. All rights reserved.
//

#import "StaticObject.h"

@implementation StaticObject

static StaticObject *staticObject_ = nil;

- (void)dealloc
{
    
    [super dealloc];
}

- (id)init
{
    if (self = [super init]) {
        profile_ = nil;
    }
    
    return self;
}

- (void)setProfile:(Profile *)profile
{
    profile_ = profile;
}

- (Profile *)getProfile
{
    return profile_;
}

- (void)clearProfile
{
    profile_ = nil;
}

+(id)instance
{
    if (staticObject_ == nil) {
        staticObject_ = [[StaticObject alloc] init];
    }
    
    return staticObject_;
}

+ (void)setTemporaryProfile:(Profile *)profile
{
    [[StaticObject instance] setProfile:profile];
}

+ (Profile *)getTemporaryProfile
{
    return [[StaticObject instance] getProfile];
}

+(void)clearTemporaryProfile
{
    [[StaticObject instance] clearProfile];
}

@end
