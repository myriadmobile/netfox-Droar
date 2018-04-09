//
//  netfox_DroarLoader.m
//  netfox-Droar
//
//  Created by Nathan Jangula on 10/26/17.
//

#import "netfox_DroarLoader.h"
#import <Droar/Droar-Swift.h>
#import <netfox_Droar/netfox_Droar-Swift.h>

@implementation netfox_DroarLoader

+ (void)load {
    SEL selector = NSSelectorFromString(@"sharedInstance");
    if ([netfox_Droar respondsToSelector:selector])
    {
        [Droar register:[netfox_Droar performSelector:selector]];
    }
}

@end
