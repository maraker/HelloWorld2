//
//  ViewController.m
//  HelloWorld2
//
//  Created by Markku Åkerfelt on 09/02/15.
//  Copyright (c) 2015 Markku Åkerfelt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// showAlert action nappulalle
- (IBAction)showAlert {
    // Luodaan alertview alloc=new swiftissä.
    // 2. delegate jos delegate:self . katso header siellä 1.
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"MyTitle"
                                    message:@"Hello World 2!!"
                                    delegate:self//nil
                                    
                                    cancelButtonTitle:@"OK"
                                    otherButtonTitles:@"Button 1", @"Moi", nil];//nil];

    // 4. Ohjelmallisesti voidaan jälkikäteen lisätä yms.
    [helloWorldAlert addButtonWithTitle:@"Added 1"];
    [helloWorldAlert addButtonWithTitle:@"Added 2"];

    // Näytetään alertview
    [helloWorldAlert show];
    
}

// 5. Voidaan disabloida button haluttaessa ohjelmallisesti.
BOOL flag=false;
- (BOOL)alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView
{
    // Moi button muuttaa flagin true.
    return flag;
    
}

// 3. delegoitu viesti tulee tänne showalertista kun delegate:self
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"Button 1"])
    {
        NSLog(@"Button 1 was selected.");
    }
    else if([title isEqualToString:@"Moi"])
    {
        flag=true;
        NSLog(@"Button Moi was selected. Button 1 enabled.");
    }
    else if([title isEqualToString:@"OK"])
    {
        NSLog(@"Button OK was selected.");
    }
}

@end
