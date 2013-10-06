//
//  main.m
//  test
//
//  Created by Kun on 13-10-3.
//  Copyright (c) 2013年 Kun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^blk_t)(void);

@interface MyObject : NSObject{
    blk_t blk;
}

@end

@implementation MyObject

-(id)init{
    self =  [super init];
	blk = ^{NSLog(@"%@", self);};
    return self;
}

-(void)dealloc{
    NSLog(@"dealloc");
}

@end


int main(int argc, const char * argv[])
{
	id o = [[MyObject alloc] init];
    NSLog(@"%@", o);
    return 0;
}

