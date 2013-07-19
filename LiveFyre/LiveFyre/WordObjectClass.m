//
//  WordObjectClass.m
//  LiveFyre
//
//  Created by Darrell Lewis on 7/19/13.
//  Copyright (c) 2013 CodingTest. All rights reserved.
//

#import "WordObjectClass.h"

@implementation WordObjectClass

-(id)init
{
    self = [super init];
    self.arrIndex = [[NSMutableArray alloc]init];
    self.count = 0;
    
    return self;
}

@end
