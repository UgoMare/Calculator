//
//  ViewController.m
//  Calculator
//
//  Created by Ugo on 24/07/14.
//  Copyright (c) 2014 Ugo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(void)editResult:(NSString*) idButton {
    if ([idButton isEqual:@"+"] || [idButton isEqual:@"-"] || [idButton isEqual:@"*"] || [idButton isEqual:@"/"]){
        NSLog(@"math op");
    }
    if ([self.resultLabel.text  isEqual: @"0"]){
        self.resultLabel.text = [NSString stringWithFormat:@"%@", idButton];
    }
    else{
        self.resultLabel.text = [NSString stringWithFormat:@"%@%@", self.resultLabel.text, idButton];
    }
}

- (IBAction)button1 {
    [self editResult:@"1"];
}

- (IBAction)button2 {
    [self editResult:@"2"];
}

- (IBAction)button3 {
    [self editResult:@"3"];
}

- (IBAction)button4{
    [self editResult:@"4"];
}
- (IBAction)button5 {
    [self editResult:@"5"];
}

- (IBAction)button6 {
    [self editResult:@"6"];
}

- (IBAction)button7 {
    [self editResult:@"7"];
}

- (IBAction)button8 {
    [self editResult:@"8"];
}

- (IBAction)button9 {
    [self editResult:@"9"];
}

- (IBAction)button0 {
    [self editResult:@"0"];
}

- (IBAction)buttonEqual {
}

- (IBAction)buttonPlus {
    [self editResult:@"+"];
}

- (IBAction)buttonMinus {
    [self editResult:@"-"];
}

- (IBAction)buttonMult {
    [self editResult:@"*"];
}

- (IBAction)buttonDiv {
    [self editResult:@"/"];
}

- (IBAction)buttonC {
    self.resultLabel.text = @"0";
}
@end
