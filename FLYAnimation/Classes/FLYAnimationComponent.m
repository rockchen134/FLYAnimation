//
//  FLYAnimationComponent.m
//  Pods
//
//  Created by Rock Chen on 2017/2/3.
//
//

#import "FLYAnimationComponent.h"

@interface FLYAnimationComponent ()

@property (nonatomic, readwrite, strong) NSObject<FLYAnimationProtocol> *component;

@end

@implementation FLYAnimationComponent

- (instancetype)initWithComponent:(NSObject<FLYAnimationProtocol> *)component {
    
    self = [super init];
    
    if (self) {
        
        self.component = component;
    }
    
    return self;
}

- (void)show {
    
}

@end
