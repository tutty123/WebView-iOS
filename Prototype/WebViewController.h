//
//  WebViewController.h
//  Prototype
//
//  Created by Romy Ilano on 10/1/12.
//  Copyright (c) 2012 snowyla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate, UIAlertViewDelegate>
{
    NSURL *theURL;
    NSString *theTitle;
    
    IBOutlet UIWebView *webView;
    IBOutlet UINavigationItem *webTitle;
}

-(id)initWithURL:(NSURL *)url;
-(id)initWithURL:(NSURL *)url andTitle:(NSString *)string;
-(IBAction)done:(id)sender;

@end
