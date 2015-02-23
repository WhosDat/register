//
//  ViewController.m
//  SQL
//
//  Created by Jason Nghe on 2/22/15.
//  Copyright (c) 2015 Jason Nghe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) postMessage:(NSString*) message withName:(NSString*) name{
    if (name != nil && message != nil){
        NSMutableString *postString = [NSMutableString stringWithString:kPostURL];
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kName, name]];
        [postString appendString:[NSString stringWithFormat:@"&%@=%@", kMessage, message]];
        [postString setString:[postString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
         [request setHTTPMethod:@"POST"];
         postConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
         
    }
}

-(IBAction)post:(id)sender{
    [self postMessage:messageText.text withName:nameText.text];
    [messageText resignFirstResponder];
    messageText.text = nil;
    nameText.text = nil;
}

@end
