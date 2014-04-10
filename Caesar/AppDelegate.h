//
//  AppDelegate.h
//  Caesar
//
//  Created by veightz on 4/4/14.
//  Copyright (c) 2014 HDUISA. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;


@property (strong) IBOutlet NSTextField *cleartext;
@property (weak) IBOutlet NSTextField *resulttext;
- (NSString *)convertCaesar:(NSString *)cleartext;

@end
