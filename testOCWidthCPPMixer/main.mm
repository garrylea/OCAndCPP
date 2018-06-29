//
//  main.m
//  testOCWidthCPPMixer
//
//  Created by lichao on 2018/6/28.
//  Copyright © 2018年 lichao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#include "TestCPP.h"

int main(int argc, char * argv[]) {
    
    TestCPP *tCPP = new TestCPP();
    tCPP->sayHello();
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
