//
//  LabelView.h
//  AutoLayoutPractice
//
//  Created by Xuan on 3/4/16.
//  Copyright © 2016 Wingzero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelView : UIView

IB_DESIGNABLE
@property (nonatomic, copy) IBInspectable NSString *text;
@property (nonatomic, assign) IBInspectable CGFloat maxPreferredWidth;

@end
