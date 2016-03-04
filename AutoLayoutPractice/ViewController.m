//
//  ViewController.m
//  AutoLayoutPractice
//
//  Created by Xuan on 1/7/16.
//  Copyright © 2016 Wingzero. All rights reserved.
//

#import "ViewController.h"
#import "LabelCell.h"

@interface ViewController () <UITableViewDataSource>

@end

@implementation ViewController {
    NSArray *labels;
    UITableView *tView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    labels = @[@"haha", @"asdfasdfasdfasdfasdfsadfasdfasdasdfasdfsadfasdfasdasdfasdfsadfasdfasdasdfasdfsadfasdfasdasdfasdfsadfasdfasdfasdfasdfasdfasdf"];
    
    [self buildTableView];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

-(void)buildTableView {
    CGRect f = [[UIScreen mainScreen] bounds];
    tView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, f.size.width, f.size.height)];
    tView.dataSource = self;
    
    /**
     *  this is important, setting this will tell table view its row height is dynamic
     *
     */
    tView.estimatedRowHeight = 50;
    
    [tView registerNib:[UINib nibWithNibName:@"LabelCell" bundle:nil] forCellReuseIdentifier:@"labelCell"];
    [self.view addSubview:tView];
}

#pragma mark - UITableViewDataSouce
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LabelCell *cell = (LabelCell *)[tableView dequeueReusableCellWithIdentifier:@"labelCell"];
    if (!cell) {
        cell = [[LabelCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"labelCell"];
    }
    cell.labelView.text = labels[indexPath.row % labels.count];
    
    if (indexPath.row % 2 == 0)
        cell.labelView.backgroundColor = [UIColor redColor];
    else
        cell.labelView.backgroundColor = [UIColor colorWithRed:94.0/255 green:157.0/255 blue:211.0/255 alpha:1.0];
    
    return cell;
}

@end
