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

#import "TinyMachine.h"

@interface CMXAppDelegate()

@property (nonatomic) IBOutlet ACEView *editor;
@property (weak) IBOutlet NSPopUpButton *theme;
@property (weak) IBOutlet NSPopUpButton *mode;

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
    
    [self.mode addItemWithTitle:@"TM Inst"];
    [self.mode selectItemAtIndex:0];
}

#pragma mark - Actions

- (IBAction)themeChanged:(id)sender {
    [self.editor setTheme:[self.theme indexOfSelectedItem]];
}

- (IBAction)stepInto:(id)sender {
    // fake action.. can't set breakpoint effect now.
}

#pragma mark - ACEViewDelegate

- (void) textDidChange:(NSNotification *)notification {
    // nothing
}

@end
