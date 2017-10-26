//
//  Loader.m
//  netfox-Droar
//
//  Created by Nathan Jangula on 10/26/17.
//

#import "Loader.h"
#import <Droar/Droar-Swift.h>
#import <netfox_Droar/netfox_Droar-Swift.h>

@implementation Loader

+ (void)load {
    [Droar register:[netfox_Droar performSelector:@selector(sharedInstance)]];
}

@end
