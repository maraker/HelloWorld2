//
//  ViewController.h
//  HelloWorld2
//
//  Created by Markku Åkerfelt on 09/02/15.
//  Copyright (c) 2015 Markku Åkerfelt. All rights reserved.
//

#import <UIKit/UIKit.h>

// 1. Lisää ViewControlleriin UIAlertViewDelegate

@interface ViewController : UIViewController <UIAlertViewDelegate>
//Type qualifier used by Interface Builder to synchronize actions.
// showAlert action
- (IBAction)showAlert;

@end

