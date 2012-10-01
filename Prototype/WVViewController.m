//
//  WVViewController.m
//  Prototype
//
//  Created by Romy Ilano on 10/1/12.
//  Copyright (c) 2012 snowyla. All rights reserved.
//

#import "WVViewController.h"
#import "WebViewController.h"

@interface WVViewController ()

@end

@implementation WVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedGo:(id)sender {
    
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    WebViewController *webViewController = [[WebViewController alloc]
                                            initWithURL:url
                                            andTitle:@"Apple"];
    [self presentViewController:webViewController animated:YES completion:NULL];
}
@end
