//
//  NSDictionary+Networking.m
//  Joseph Fabisevich
//
//  Created by Joe on 5/23/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Networking)

+ (NSString *)nilIfNull:(NSString *)string;
- (NSString *)urlParametersFromDictionary;

@end
