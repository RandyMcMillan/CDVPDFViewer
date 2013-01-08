// PDFViewer based on ChildBrowser

//  Created by Jesse MacFadyen on 10-05-29.
//  Copyright 2010 Nitobi. All rights reserved.
//
//  ___FILEBASENAME___
//  CDVEmailComposer Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan

#import <UIKit/UIKit.h>

@protocol ___FILEBASENAME___Delegate <NSObject>

- (void)onClose;

@end

@protocol CDVOrientationDelegate <NSObject>

- (NSUInteger)supportedInterfaceOrientations;
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
- (BOOL)shouldAutorotate;

@end

@class PDFView;

@interface ___FILEBASENAME___ViewController : UIViewController <UIWebViewDelegate>{}

@property (nonatomic, strong) IBOutlet UIButton *closeBtn;

@property (nonatomic, strong) IBOutlet PDFView		*pdfView;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIImageView	*imageView;
@property (nonatomic, strong) IBOutlet UIToolbar	*toolBar;

// unsafe_unretained is equivalent to assign - used to prevent retain cycles in the two properties below
@property (nonatomic, unsafe_unretained) id <___FILEBASENAME___Delegate>	delegate;
@property (nonatomic, unsafe_unretained) id									orientationDelegate;

+ (NSString *)resolveImageResource:(NSString *)resource;
- (___FILEBASENAME___ViewController *)initWithScale:(BOOL)enabled;
- (void)viewDidLoad;

- (IBAction)onDoneButtonPress:(id)sender;
- (void)loadPDF:(NSString *)pdfName;
- (void)closeViewer;
- (BOOL)shouldAutorotate;

@end
