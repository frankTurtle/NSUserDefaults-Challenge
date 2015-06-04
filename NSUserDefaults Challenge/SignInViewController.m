//
//  SignInViewController.m
//  NSUserDefaults Challenge
//
//  Created by OSX on 6/4/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "SignInViewController.h"
#import "CreateAccountViewController.h"
#import "OriginalViewController.h"

@interface SignInViewController () <CreateAccountViewControllerDelegate>

@end

@implementation SignInViewController

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
    
    if ([[segue destinationViewController] isKindOfClass:[CreateAccountViewController class]]) //............. checking to see if the destination is the CreateAccountVC class
    {
        CreateAccountViewController *newView = [segue destinationViewController]; //.......................... create a new instance of the class we're going to
        newView.delegate = self; //........................................................................... set the delegate to this view
    }
}


#pragma mark - Button handling

// Method to handle when the loginButton button in the menu bar is clicked
- (IBAction)loginButtonClicked:(id)sender
{
    NSUserDefaults *defaultInfo = [NSUserDefaults standardUserDefaults]; //................................. allows access to NSUserDeffaults
    
    if ([[defaultInfo objectForKey:USER_NAME] isEqualToString:self.usernameTextField.text]) //.............. checks to see if username is valid
    {
        if ([[defaultInfo objectForKey:USER_PASSWORD] isEqualToString:self.passwordTextField.text]) //...... checks password validity
        {
            [self performSegueWithIdentifier:@"toOriginalViewControllerSegue" sender:self]; //............... segues to the originalVC
        }
        else
        {
            self.passwordTextField.text = @"";
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"Password invalid, try again"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil, nil];
            [alert show];
        }
    }
    else
    {
        self.usernameTextField.text = @"";
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Username Not found"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
}

// Method to handle when the createAccount button in the menu bar is clicked
- (IBAction)createButtonClicked:(id)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:self]; //............... segues to the CreateAccountVC
}

#pragma mark - Delegate Methods

// Method that handles when the cancel button is pressed
-(void)cancelAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

// Method to handle when the createAccount is pressed
-(void)createAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
