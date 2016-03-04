//
//  LabelView.m
//  AutoLayoutPractice
//
//  Created by Xuan on 3/4/16.
//  Copyright © 2016 Wingzero. All rights reserved.
//

#import "LabelView.h"

@implementation LabelView

-(void)setText:(NSString *)text {
    if (![_text isEqualToString:text]) {
        _text = text;
        [self invalidateIntrinsicContentSize];
    }
}

-(CGSize)intrinsicContentSize {
    CGRect boundingRect = [self.text boundingRectWithSize:CGSizeMake(self.superview.bounds.size.width, CGFLOAT_MAX)
                                           options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                        attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16]}
                                           context:nil];
    return boundingRect.size;
}

@end
