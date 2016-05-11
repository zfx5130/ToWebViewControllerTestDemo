//
//  ZXCWebViewController.m
//  zhixingche
//
//  Created by satgi on 9/26/15.
//  Copyright © 2015 yunzao. All rights reserved.
//

#import "ZXCWebViewController.h"

//#import "NSString+Custom.h"

@interface ZXCWebViewController ()

//@property (assign, nonatomic) NavigationAppearanceType navigationType;

@end

@implementation ZXCWebViewController

#pragma mark - Lifecycle

- (instancetype)initWithTitle:(NSString *)title
                    URLString:(NSString *)URLString {
           //    navigationType:(NavigationAppearanceType)navigationType {
    self = [self initWithTitle:title
                     URLString:URLString
            //navigationType:navigationType
       navigationButtonsHidden:NO];
    return self;
}

- (instancetype)initWithTitle:(NSString *)title
                    URLString:(NSString *)URLString
               //navigationType:(NavigationAppearanceType)navigationType
      navigationButtonsHidden:(BOOL)navigationButtonsHidden {
    self = [super initWithURLString:URLString];
    if (self) {
        self.showPageTitles = NO;
        self.showDoneButton = NO;
        self.navigationButtonsHidden = navigationButtonsHidden;
//        self.loadingBarTintColor = RGBColor(59.0f, 183.0f, 247.0f);
//        self.buttonTintColor = RGBColor(59.0f, 183.0f, 247.0f);
        self.title = NSLocalizedString(title, "title");
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
 //   [self updateNavigationAppearanceWithType:self.navigationType];
   // [self addShadowForNavigationBar];
    //self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if (self.navigationButtonsHidden) {
        self.navigationButtonsHidden = YES;
    }
  //   self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
