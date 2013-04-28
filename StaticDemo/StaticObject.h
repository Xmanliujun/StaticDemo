//
//  StaticObject.h
//  StaticDemo
//
//  Created by kimpeng on 13-4-28.
//  Copyright (c) 2013年 kimpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Profile.h"

@interface StaticObject : NSObject
{
    Profile *profile_;
}

- (void)setProfile:(Profile *)profile;

- (Profile *)getProfile;

- (void)clearProfile;

+(id)instance;

+ (void)setTemporaryProfile:(Profile *)profile;

+ (Profile *)getTemporaryProfile;

+(void)clearTemporaryProfile;

@end
