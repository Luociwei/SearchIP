//
//  ViewController.m
//  SC_Eowyn
//
//  Created by ciwei luo on 2020/3/31.
//  Copyright © 2020 ciwei luo. All rights reserved.
//

#import "ViewController.h"
#import <CwGeneralManagerFrameWork/Task.h>
#import <CwGeneralManagerFrameWork/TextView.h>

@interface ViewController ()

@property (nonatomic,strong)TextView *view1;

@property (weak) IBOutlet NSTextField *ipAddress;

@property (weak) IBOutlet NSTextField *ipRangeCount;

@end

@implementation ViewController

//- (IBAction)vrect:(NSButton *)sender {
//
//    [self.vrectReadTask send:vrectCmd];
//    NSString *read = [self.vrectReadTask cw_read];
//    self.logview.string = read;
//
//}
//

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view1 = [TextView cw_allocInitWithFrame:NSMakeRect(20, 8, 433, 272)];
    [self.view addSubview:self.view1];
    
    
    

  
    
}

- (IBAction)searchIP:(id)sender {
    
    
    [self.view1 searchIpFrom:self.ipAddress.stringValue to:self.ipRangeCount.stringValue.integerValue];
}



@end
