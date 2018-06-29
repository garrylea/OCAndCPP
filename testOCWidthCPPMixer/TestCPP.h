//
//  TestCPP.hpp
//  testOCWidthCPPMixer
//
//  Created by lichao on 2018/6/28.
//  Copyright © 2018年 lichao. All rights reserved.
//

#ifndef TestCPP_hpp
#define TestCPP_hpp

#include <stdio.h>
#import "TestOC.h"

class TestCPP{
public:
    TestCPP();
    virtual ~TestCPP();
    
private:
    int a;
    TestOC *tOC;
public:
    void sayHello();
};

#endif /* TestCPP_hpp */
