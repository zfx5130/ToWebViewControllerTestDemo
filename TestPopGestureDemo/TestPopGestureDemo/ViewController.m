//
//  ViewController.m
//  TestPopGestureDemo
//
//  Created by dev on 5/11/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

#import "ViewController.h"
#import "ZXCWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.interactivePopGestureRecognizer.delegate = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)sender:(UIButton *)sender {
    ZXCWebViewController *webView = [[ZXCWebViewController alloc] initWithTitle:@"hello" URLString:@"http://www.baidu.com"];
    [self.navigationController pushViewController:webView animated:YES];
}


@end
