//
//  CMXAppDelegate.m
//  CMinX
//
//  Created by AquarHEAD L. on 6/6/13.
//  Copyright (c) 2013 Team.TeaWhen. All rights reserved.
//

#import "CMXAppDelegate.h"
#import "ACEView/ACEView.h"
#import "ACEView/ACEModeNames.h"
#import "ACEView/ACEThemeNames.h"

@interface CMXAppDelegate()

@property (nonatomic) IBOutlet ACEView *editor;
@property (weak) IBOutlet NSPopUpButton *theme;

@end

@implementation CMXAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.editor setDelegate:self];
    [self.editor setMode:ACEModeCPP];
    [self.editor setTheme:ACEThemeTomorrowNightEighties];
    [self.editor setShowPrintMargin:NO];
    [self.editor setShowInvisibles:YES];
}

- (void)awakeFromNib {
    [self.theme addItemsWithTitles:[ACEThemeNames humanThemeNames]];
    [self.theme selectItemAtIndex:ACEThemeTomorrowNightEighties];
}

- (IBAction)themeChanged:(id)sender {
    [self.editor setTheme:[self.theme indexOfSelectedItem]];
}

- (void) textDidChange:(NSNotification *)notification {
    // nothing
}

@end
