//
//  ViewController.m
//  Calculator
//
//  Created by Ugo on 24/07/14.
//  Copyright (c) 2014 Ugo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSString *stack;
    int optype;
    double result;
    bool newOp;
}
@end

@implementation ViewController
@synthesize resultLabel, operatorLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    stack = @"0";
    result = 0;
    optype = -1;
    newOp = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)editNumber:(int)number{
    if ([stack  isEqual: @"0"])
        stack = @"";
    if (number == -1){
        stack = [stack substringToIndex:[stack length] -1];
    }
    else {
        if (newOp == true){
            stack = @"";
            newOp = false;
        }
        stack = [NSString stringWithFormat:@"%1$@%2$d", stack, number];
        }
    [resultLabel setText:stack];
}

-(void) addDot{
    stack = [NSString stringWithFormat:@"%1$@.", stack];
    [resultLabel setText:stack];

}

-(void) clear{
    stack = @"0";
    result = 0;
    optype = -1;
    [resultLabel setText:stack];
    [operatorLabel setText:@""];
}

#pragma - Operators

-(void)operators:(int)op {
    if (op == 0){ //=
        if (optype == 1) {
        stack = [NSString stringWithFormat:@"%0g", [stack doubleValue]+result];
        }
        else if (optype == 2){
            stack = [NSString stringWithFormat:@"%g", [stack doubleValue]-result];

        }
        else if (optype == 3){
            stack = [NSString stringWithFormat:@"%g", [stack doubleValue]*result];
        }
        else if (optype == 4){
            stack = [NSString stringWithFormat:@"%g", [stack doubleValue]/result];
        }
//        NSLog(@"%@", stack);
        [resultLabel setText:stack];
        [operatorLabel setText:@""];
        optype = -1;
    }
    else {
        newOp = true;
        if (optype != -1){
            if (optype == 1) {
                stack = [NSString stringWithFormat:@"%g", [stack doubleValue]+result];
            }
            else if (optype == 2){
                stack = [NSString stringWithFormat:@"%g", [stack doubleValue]-result];
            }
            else if (optype == 3){
                stack = [NSString stringWithFormat:@"%g", [stack doubleValue]*result];
            }
            else if (optype == 4){
                stack = [NSString stringWithFormat:@"%g", [stack doubleValue]/result];
            }
        }
        NSLog(@"%@", [NSString stringWithFormat:@"%g",result]);
        if (op == 1) {
            [operatorLabel setText:@"+"];
          }
        else if (op == 2){
            [operatorLabel setText:@"-"];
        }
        else if (op == 3){
            [operatorLabel setText:@"*"];
        }
        else if (op == 4){
            [operatorLabel setText:@"/"];
        }
        optype = op;
        result = [stack doubleValue];
//        if (result != 0)
//            stack = [NSString stringWithFormat:@"%f",result];
        //result = 0;
        [resultLabel setText: stack];
    }
    
}

#pragma - Buttons

- (IBAction)button1 {
    [self editNumber:1];
}

- (IBAction)button2 {
    [self editNumber:2];
}

- (IBAction)button3 {
    [self editNumber:3];
}

- (IBAction)button4{
    [self editNumber:4];
}

- (IBAction)button5 {
    [self editNumber:5];
}

- (IBAction)button6 {
    [self editNumber:6];
}

- (IBAction)button7 {
    [self editNumber:7];
}

- (IBAction)button8 {
    [self editNumber:8];
}

- (IBAction)button9 {
    [self editNumber:9];
}

- (IBAction)button0 {
    [self editNumber:0];
}

- (IBAction)dot {
    [self addDot];
}

- (IBAction)buttonEqual {
    [self operators:0];
}

- (IBAction)buttonPlus {
    [self operators:1];
}

- (IBAction)buttonMinus {
    [self operators:2];
}

- (IBAction)buttonMult {
    [self operators:3];
}

- (IBAction)buttonDiv {
    [self operators:4];
}

- (IBAction)remove {
    [self editNumber:-1];
}


- (IBAction)buttonC {
    [self clear];
}
@end
