// PDFViewer based on ChildBrowser

//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//  Copyright 2012, Randy McMillan

#import <Cordova/CDVPlugin.h>
#import "___FILEBASENAME___ViewController.h"

@interface ___FILEBASENAME___ : CDVPlugin <___FILEBASENAME___Delegate>{}

@property (nonatomic, strong) ___FILEBASENAME___ViewController *pdfViewer;

- (void)showPDF:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options;

@end
