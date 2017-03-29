//
//  ViewController.m
//  GCDDemo1
//
//  Created by Jony on 17/3/27.
//  Copyright © 2017年 yavatop. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testGCDWithSerialAndConcurrent];
}

-(void)testGCDWithSerialAndConcurrent
{
    //dispatch_queue_t gcd_serial = dispatch_queue_create("这是序列队列",NULL);
   
    dispatch_queue_t gcd_concurrent = dispatch_queue_create("这是并发队列",DISPATCH_QUEUE_CONCURRENT);
    
    //同步操作是有序的，异步操作是无序的
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b0");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b1");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b2");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b3");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b4");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b5");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b6");});
    dispatch_sync(gcd_concurrent, ^{NSLog(@"b7");});
    
    //dispatch_release(gcd_serial);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
