//
//  ViewController.h
//  SQL
//
//  Created by Jason Nghe on 2/22/15.
//  Copyright (c) 2015 Jason Nghe. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kPostURL @"http://compliments.host22.com/fetchTest.php"
#define kName @"name"
#define kMessage @"message"

@interface ViewController : UIViewController{
    IBOutlet UITextField *nameText;
    IBOutlet UITextField *messageText;
    NSURLConnection *postConnection;
}

- (IBAction)post:(id)sender;

@end

