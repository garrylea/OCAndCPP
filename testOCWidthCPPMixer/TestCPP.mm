//
//  TestCPP.cpp
//  testOCWidthCPPMixer
//
//  Created by lichao on 2018/6/28.
//  Copyright © 2018年 lichao. All rights reserved.
//

#include "TestCPP.h"

#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

TestCPP::TestCPP(){
    NSError *error;
    tOC = [[TestOC alloc] init];
    
    AVAudioSession *session = [AVAudioSession sharedInstance];
    
    [session addObserver:tOC
              forKeyPath:@"outputVolume"
                 options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                 context:nil];
    
    if([session setActive:true error:&error]){
        NSLog(@"Success to active AVAudioSession!");
    }else {
        NSLog(@"Failed to active AVAudioSession!");
    }
    
}

TestCPP::~TestCPP(){

    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session removeObserver:tOC forKeyPath:@"outputVolume"];
    
    [TestOC dealloc];
}

void TestCPP::sayHello(){
    
    [tOC sayHello];
    printf("Hello World!\n");
}
