//PDFViewer based on ChildBrowser

/* MIT licensed */
// (c) 2010 Jesse MacFadyen, Nitobi
//
//  ___FILEBASENAME___
//  CDVEmailComposer Template Created Jan 7 2013
//  Copyright 2013 @RandyMcMillan

(function() {
 
 var cordovaRef = window.PhoneGap || window.Cordova || window.cordova; // old to new fallbacks
 
 function ___FILEBASENAME___() {
 // Does nothing
 }
 
  
 // Callback when the user chooses the 'Done' button
 // called from native
 ___FILEBASENAME___._onClose = function()
 {
 window.plugins.___FILEBASENAME___.onClose();
 };
 
 
 
/* The interface that you will use to access functionality */
 
 // Show a webpage, will result in a callback to onLocationChange
 ___FILEBASENAME___.prototype.showPDF = function(loc)
 {
 cordovaRef.exec("___FILEBASENAME___.showPDF", loc);
 };
 
 // close the browser, will NOT result in close callback
 ___FILEBASENAME___.prototype.close = function()
 {
 cordovaRef.exec("___FILEBASENAME___.close");
 };
 
 // Not Implemented
 ___FILEBASENAME___.prototype.jsExec = function(jsString)
 {
 // Not Implemented!!
 //PhoneGap.exec("PDFViewerCommand.jsExec",jsString);
 };
 
 // Note: this plugin does NOT install itself, call this method some time after deviceready to install it
 // it will be returned, and also available globally from window.plugins.PDFViewer
 ___FILEBASENAME___.install = function()
 {
 if(!window.plugins) {
 window.plugins = {};
 }
 if ( ! window.plugins.___FILEBASENAME___ ) {
 window.plugins.___FILEBASENAME___ = new ___FILEBASENAME___();
 }
 
 };
 
 
 if (cordovaRef && cordovaRef.addConstructor) {
 cordovaRef.addConstructor(___FILEBASENAME___.install);
 } else {
 console.log("___FILEBASENAME___ Cordova Plugin could not be installed.");
 return null;
 }
 
 
 })();
