//
//  CreateAccountViewController.m
//  NSUserDefaults Challenge
//
//  Created by OSX on 6/4/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
}


#pragma mark - Handle the Buttons

- (IBAction)createAccountButtonClicked:(id)sender
{
    NSUserDefaults *defaultInfo = [NSUserDefaults standardUserDefaults]; //............... create a way to access / store NSUserDefaults
    
    [defaultInfo setObject:self.usernameTextField.text forKey:USER_NAME]; //.............. stores the username
    
    if ([self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) //. verifies the passwords match, throws error if not
    {
        [defaultInfo setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [self.delegate createAccount]; //................................................ calls the delegates method createAccount

    }
    else
    {
        self.passwordTextField.text = @"";
        self.confirmPasswordTextField.text = @"";
        
        UIAlertView *alert= [[UIAlertView alloc] initWithTitle:@"Error"
                                                       message:@"Passwords don't match, try again"
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil, nil];
        [alert show];
    }
    
   }

- (IBAction)cancelButtonClicked:(id)sender
{
    [self.delegate cancelAccount]; //.............. calls the delegates method cancelAccount
}

@end
