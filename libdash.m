//
//  libdash.m
//  libdash
//  2021 Shinohara Rin.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#include <stdio.h>


NSString *displayString(id self, SEL _cmd){
    return @"com.barebones.textwrangler";
}

BOOL activatedByLicense(id self, SEL _cmd){
    return true;
}

__attribute__((constructor))
void init(){
    Class InApp = objc_getClass("DHInApp");
    Method dis = class_getInstanceMethod(InApp, @selector(displayString));
    Method lic = class_getInstanceMethod(InApp, @selector(activatedByLicense));
    
    method_setImplementation(dis, (IMP) displayString);
    method_setImplementation(lic, (IMP) activatedByLicense);
}
