//
//  AppDelegate.m
//  Caesar
//
//  Created by veightz on 4/3/14.
//  Copyright (c) 2014 HDUISA. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

}
- (IBAction)convertPressed:(id)sender {
    NSMutableString *result = [NSMutableString stringWithString:[self.cleartext stringValue]];
    [self.cleartext setStringValue:[result uppercaseString]];
    [self.resulttext setStringValue:[self convertCaesar:result]];
}

- (NSString *)convertCaesar:(NSString *)cleartext
{
    NSMutableString *result = [NSMutableString stringWithString:@""];
    
    for (int i = 0; i < [cleartext length]; i++) {
        char ch = [cleartext characterAtIndex:i];
        if ( ch >= 'A' && ch <= 'Z') {
            ch += 3;
        }
        if (ch > 'Z') {
            ch -= 26;
        }
        NSLog(@"%c",ch);
        [result appendFormat:@"%c", ch];
    }
    
    return result;
}

@end
