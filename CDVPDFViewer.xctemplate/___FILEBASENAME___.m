// PDFViewer based on ChildBrowser

//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//
//  ___FILEBASENAME___
//  CDVEmailComposer Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan
//  //  Copyright 2012, Randy McMillan

#import "___FILEBASENAME___.h"
#import <Cordova/CDVViewController.h>

@implementation ___FILEBASENAME___

@synthesize pdfViewer;


/*
 *
 *   - (void)myPluginMethod:(CDVInvokedUrlCommand*)command
 *   {
 *   // Check command.arguments here.
 *   [self.commandDelegate runInBackground:^{
 *   NSString* payload = nil;
 *   // Some blocking logic...
 *   CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
 *   // The sendPluginResult method is thread-safe.
 *   [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
 *   }];
 *   }
 *
 */


- (void)showPDF:(CDVInvokedUrlCommand*)command
{
	if (self.pdfViewer == nil) {
#if __has_feature(objc_arc)
			self.pdfViewer = [[___FILEBASENAME___ViewController alloc] initWithScale:NO];
#else
			self.pdfViewer = [[[___FILEBASENAME___ViewController alloc] initWithScale:NO] autorelease];
#endif
		self.pdfViewer.delegate				= self;
		self.pdfViewer.orientationDelegate	= self.viewController;
	}

	// TODO: Add better Modal Pres options
	pdfViewer.modalPresentationStyle = UIModalPresentationFullScreen;
	// pdfViewer.modalPresentationStyle = UIModalPresentationPageSheet;
	// pdfViewer.modalPresentationStyle = UIModalPresentationFormSheet;
	pdfViewer.modalTransitionStyle = UIModalTransitionStylePartialCurl;
	// pdfViewer.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
	// pdfViewer.modalTransitionStyle  =  UIModalTransitionStyleFlipHorizontal;

	[self.viewController presentModalViewController:pdfViewer animated:YES];

	NSString *pdfName = (NSString *)[command.arguments objectAtIndex:0];

	[self.pdfViewer loadPDF:pdfName];	// @"YingYang.pdf"];
}

- (void)close:(CDVInvokedUrlCommand*)command
{
	[self.pdfViewer closeViewer];
}

- (void)onClose
{
	[self.webView stringByEvaluatingJavaScriptFromString:@"window.plugins.PDFViewer.onClose();"];
}

#if !__has_feature(objc_arc)
	- (void)dealloc
	{
		self.pdfViewer = nil;

		[super dealloc];
	}

#endif

@end
