//
//  ViewController.m
//  LYEncript
//
//  Created by liyang on 16/11/3.
//  Copyright © 2016年 liyang. All rights reserved.
//

#import "ViewController.h"
#import "LYDESHelper.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *testString;

@end

@implementation ViewController


- (IBAction)encode:(id)sender {
    NSString *encode;
    encode = [LYDESHelper encrypt:@"这是DES加密"];
    NSLog(@"%@", encode);
    self.testString = encode;
}

- (IBAction)decode:(id)sender {
    
    if (!self.testString.length) {
        return;
    }
    
    NSString *decode;
    decode = [LYDESHelper decrypt:self.testString];
    NSLog(@"%@", decode);
}
@end
