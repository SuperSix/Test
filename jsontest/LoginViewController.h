//
//  LoginViewController.h
//  jsontest
//
//  Created by James Sreenan on 27/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)SigninClicked:(id)sender;

@end
