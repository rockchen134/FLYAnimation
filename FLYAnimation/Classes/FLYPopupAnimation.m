//
//  FLYPopupAnimation.m
//  Pods
//
//  Created by Rock Chen on 2017/2/3.
//
//

#import "FLYPopupAnimation.h"

@implementation FLYPopupAnimation

- (void)show {
    
    __weak NSObject<FLYAnimationProtocol> *component = self.component;
    
    component.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001f, 0.001f);
    
    [UIView animateWithDuration:0.3f / 1.5f animations:^{
        
        component.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1f, 1.1f);
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.3f / 2.0f animations:^{
            
            component.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9f, 0.9f);
        } completion:^(BOOL finished) {
            
            [UIView animateWithDuration:0.3f / 2.0f animations:^{
                
                component.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}

@end
