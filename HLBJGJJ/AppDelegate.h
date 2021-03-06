//
//  AppDelegate.h
//  HLBJGJJ
//
//  Created by Hongli li on 16/1/25.
//  Copyright © 2017年 honglili. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

typedef enum : NSUInteger {
    HLBJGJJ_Login,
    HLBJGJJ_CountInfoVC,
} HLBJGJJToVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
- (void)changeToLoginViewController:(HLBJGJJToVC)toVC;


@end

