//
//  ViewController.h
//  Calculator
//
//  Created by Ugo on 24/07/14.
//  Copyright (c) 2014 Ugo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)button1;
- (IBAction)button2;
- (IBAction)button3;
- (IBAction)button4;
- (IBAction)button5;
- (IBAction)button6;
- (IBAction)button7;
- (IBAction)button8;
- (IBAction)button9;
- (IBAction)button0;
- (IBAction)buttonEqual;
- (IBAction)buttonPlus;
- (IBAction)buttonMinus;
- (IBAction)buttonMult;
- (IBAction)buttonDiv;
- (IBAction)buttonC;

-(void) editResult:(NSString*) idButton;

@end
