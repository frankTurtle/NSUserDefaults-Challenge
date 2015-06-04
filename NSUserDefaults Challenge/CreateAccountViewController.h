//
//  CreateAccountViewController.h
//  NSUserDefaults Challenge
//
//  Created by OSX on 6/4/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CreateAccountViewControllerDelegate <NSObject>

@required
-(void)cancelAccount;
-(void)createAccount;

@end

@interface CreateAccountViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

@property (weak, nonatomic) id delegate;

- (IBAction)createAccountButtonClicked:(id)sender;
- (IBAction)cancelButtonClicked:(id)sender;

@end
