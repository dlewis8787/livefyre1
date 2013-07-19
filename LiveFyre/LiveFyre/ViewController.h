//
//  ViewController.h
//  LiveFyre
//
//  Created by Darrell Lewis on 7/19/13.
//  Copyright (c) 2013 CodingTest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WordTableViewController.h"
#import "WordObjectClass.h"

@interface ViewController : UIViewController
<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *txtVwMain;


@end
