//
//  WVViewController.h
//  Prototype
//
//  Created by Romy Ilano on 10/1/12.
//  Copyright (c) 2012 snowyla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WVViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *goButton;

- (IBAction)pushedGo:(id)sender;
@end
