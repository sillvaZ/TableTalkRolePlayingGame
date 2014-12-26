//
//  TRPGTopViewController.m
//  TableTalkRolePlayingGame
//
//  Created by sillva on 2014/12/27.
//  Copyright (c) 2014年 sillva. All rights reserved.
//

#import "TRPGTopViewController.h"

@implementation TRPGTopViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupScreen];
}

#pragma mark - private setup

/*!
 * @abstract 画面の初期設定
 */
- (void)setupScreen
{
    self.title = NSLocalizedString(@"TRPGTopViewController.Title", nil);
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self setupViews];
}

/*!
 * @abstract 画面内で使用するviewの初期設定
 */
- (void)setupViews
{
    CGFloat viewHeight = 100.0f;
    CGFloat fontSize = 40.0f;
    
    UILabel *topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0
                                                                  , CGRectGetMaxY(self.navigationController.navigationBar.frame)
                                                                  , CGRectGetWidth(self.view.bounds)
                                                                  , viewHeight)];
    topLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    topLabel.backgroundColor = [UIColor redColor];
    topLabel.textAlignment = NSTextAlignmentCenter;
    topLabel.font = [UIFont boldSystemFontOfSize:fontSize];
    topLabel.text = @"Hello";
    [self.view addSubview:topLabel];
    
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0
                                                                  , CGRectGetHeight(self.view.bounds) - viewHeight
                                                                  , CGRectGetWidth(self.view.bounds)
                                                                  , viewHeight)];
    bottomLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    bottomLabel.backgroundColor = [UIColor blueColor];
    bottomLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.font = [UIFont boldSystemFontOfSize:fontSize];
    bottomLabel.text = @"world";
    [self.view addSubview:bottomLabel];
}

@end
