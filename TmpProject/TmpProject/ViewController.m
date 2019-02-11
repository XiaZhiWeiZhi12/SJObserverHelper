//
//  ViewController.m
//  TmpProject
//
//  Created by BlueDancer on 2017/12/8.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Observer.h"
#import "NSObject+SJObserverHelper.h"

@interface ViewController ()

@property (nonatomic, strong) Person *xiaoM;
@property (nonatomic, strong) Observer *observer;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)added:(id)sender {
    if ( !_xiaoM ) [self createP:nil];
    if ( !_observer ) [self createO:nil];
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    [_xiaoM sj_addObserver:_observer forKeyPath:@"name"];
}

- (IBAction)change:(id)sender {
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    _xiaoM.name = @"dsf";
}
- (IBAction)personnil:(id)sender {
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    _xiaoM = nil;
}
- (IBAction)observernil:(id)sender {
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    _observer = nil;
}
- (IBAction)createP:(id)sender {
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    _xiaoM = [Person new];
    NSLog(@"%@", _xiaoM);
}
- (IBAction)createO:(id)sender {
    NSLog(@"%d - %s", (int)__LINE__, __func__);
    _observer = [Observer new];
}


@end
