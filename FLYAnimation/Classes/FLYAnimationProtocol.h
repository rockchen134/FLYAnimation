//
//  FLYAnimationProtocol.h
//  Pods
//
//  Created by Rock Chen on 2017/2/3.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol FLYAnimationProtocol <NSObject>

@property(nonatomic, assign) CGAffineTransform transform;

@optional
- (void)show;

@end
