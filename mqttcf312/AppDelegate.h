//
//  AppDelegate.h
//  mqttcf312
//
//  Created by Christoph Krey on 24.05.17.
//  Copyright © 2017 OwnTracks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

