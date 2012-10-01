//
//  WebViewController.m
//  Prototype
//
//  Created by Romy Ilano on 10/1/12.
//  Copyright (c) 2012 snowyla. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    webTitle.title = theTitle;
    // marshal the URL we passed in with initWithURL:andTItle: to form a NSURLRequest object
    NSURLRequest *requestObject = [NSURLRequest requestWithURL:theURL];
    // load the request URL into the webView
    [webView loadRequest:requestObject];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    webView.delegate = nil;
    [webView stopLoading];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// designated initializer
-(id)initWithURL:(NSURL *)url andTitle:(NSString *)string
{
    if (self = [super init]) {
        theURL= url;
        theTitle = string;
    }
    return self;
}

-(id)initWithURL:(NSURL *)url {
    return [self initWithURL:url andTitle:nil];
}

-(IBAction)done:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

#pragma mark-Web View Delegate Protocol Methods
-(void)webViewDidStartLoad:(UIWebView *)wv
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}

-(void)webViewDidFinishLoad:(UIWebView *)wv {
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}

-(void)webView:(UIWebView *)wv didFailLoadWithError:(NSError *)error {
    [UIApplication sharedApplication].networkActivityIndicatorVisible =NO;
    
    NSString *errorString = [error localizedDescription];
    NSString *errorTitle = [NSString stringWithFormat:@"Error (%d)", error.code];
    
    UIAlertView *errorView = [[UIAlertView alloc]
                               initWithTitle:errorTitle
                               message:errorString
                              delegate:self
                                              cancelButtonTitle:nil
                                               otherButtonTitles:@"OK", nil];
    [errorView show];
                              
}

#pragma mark-Alert Delegate Methods
-(void)didPresentAlertView:(UIAlertView *)alertView
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
