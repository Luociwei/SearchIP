//
//  ViewController.m
//  SC_Eowyn
//
//  Created by ciwei luo on 2020/3/31.
//  Copyright © 2020 ciwei luo. All rights reserved.
//

#import "ViewController.h"

#import "Task.h"
#import "TextView.h"
NSString *vrectInit1 = @"hidreport -v 0x05ac -p 0x041F -i 0 set 0x90 0x90 0x3";

NSString *vrectInit2 = @"hidreport -v 0x05ac -p 0x041F -i 3 set 0x82 0x82  0x06  0x2C  0x00  0x00  0x01  0x00  0x00  0x00  0x00  0x00  0x00  0x00  0x00  0x00  0x00  0x00";

NSString *vrectInit3 = @"hidreport -v 0x05ac -p 0x041F -i 3 set 0x88  0x88  0x90  0x36  0x00  0x40  0xFF  0xFF  0xFF  0xFF  0x00  0x00  0x00  0x80";

NSString *vrectCmd = @"hidreport -v 0x05ac -p 0x041F -i 3 set 0x82 0x82 0x29 0x20 0x00 0x00 0x01 0x80 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00";
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
