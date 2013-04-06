//
//  AppDelegate.h
//  iCouchBlog
//
//  Created by Anna Lesniak on 8/26/12.
//  Copyright (c) 2012 Anna Lesniak. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kDatabaseName @"icouchblog"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) CBLDatabase *database;

@property (strong, nonatomic) UIWindow *window;

@end
