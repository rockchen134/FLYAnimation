//
//  FLYAnimationComponent.h
//  Pods
//
//  Created by Rock Chen on 2017/2/3.
//
//

#import <Foundation/Foundation.h>
#import "FLYAnimationProtocol.h"

@interface FLYAnimationComponent : NSObject <FLYAnimationProtocol>

@property (nonatomic, readonly, strong) NSObject<FLYAnimationProtocol> *component;

- (instancetype)initWithComponent:(NSObject<FLYAnimationProtocol> *)component;

@end
