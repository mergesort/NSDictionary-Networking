//
//  NSDictionary+Networking.m
//  Joseph Fabisevich
//
//  Created by Joe on 5/23/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import "NSDictionary+Networking.h"


@implementation NSDictionary (Networking)

+ (NSString *)nilIfNull:(NSString *)string
{
    return ([string isEqual:[NSNull null]]) ? string : nil;
}

- (NSString *)urlParametersFromDictionary
{
    NSMutableString *result = [NSMutableString string];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [result appendString:(result.length == 0) ? @"?" : @"&"];
        [result appendString:[NSString stringWithFormat:@"%@=%@", key, obj]];
    }];
    
    return [[result stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] copy];
}

@end
