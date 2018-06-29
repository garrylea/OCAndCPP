//
//  TestOC.m
//  testOCWidthCPPMixer
//
//  Created by lichao on 2018/6/28.
//  Copyright © 2018年 lichao. All rights reserved.
//

#import "TestOC.h"

@implementation TestOC

- (void) sayHello {
    NSLog(@"hello world: %d", self.a);
}

- (void) observeValueForKeyPath:(NSString *)keyPath
                       ofObject:(id)object
                         change:(NSDictionary<NSKeyValueChangeKey,id> *)change
                        context:(void *)context
{
    NSNumber *newVolume = change[NSKeyValueChangeNewKey];
    
    NSLog(@"hello, The Volume is change:%@!", change);
}
@end
