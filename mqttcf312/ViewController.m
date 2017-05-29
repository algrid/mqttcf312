//
//  ViewController.m
//  mqttcf312
//
//  Created by Christoph Krey on 24.05.17.
//  Copyright © 2017 OwnTracks. All rights reserved.
//

#import "ViewController.h"
#import <CocoaLumberjack/CocoaLumberjack.h>

@interface ViewController ()
@property (strong, nonatomic) MQTTSessionManager *sessionManager;
@end

static DDLogLevel ddLogLevel = DDLogLevelVerbose;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.sessionManager = [[MQTTSessionManager alloc] init];
//    self.sessionManager.delegate = self;
//    self.sessionManager.subscriptions = @{@"#": @(MQTTQosLevelAtMostOnce)};
//    [self.sessionManager connectTo:@"localhost"
//                              port:1883
//                               tls:FALSE
//                         keepalive:10
//                             clean:TRUE
//                              auth:FALSE
//                              user:nil
//                              pass:nil
//                              will:FALSE
//                         willTopic:nil
//                           willMsg:nil
//                           willQos:MQTTQosLevelAtMostOnce
//                    willRetainFlag:FALSE
//                      withClientId:@"ViewController"
//                    securityPolicy:nil
//                      certificates:nil
//                     protocolLevel:MQTTProtocolVersion311];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleMessage:(NSData *)data onTopic:(NSString *)topic retained:(BOOL)retained {
    DDLogVerbose(@"handleMessage %@", topic);
}

- (void)sessionManager:(MQTTSessionManager *)sessionManager didChangeState:(MQTTSessionManagerState)newState {
    DDLogVerbose(@"didChangeState %d", newState);
}

@end
