//
//  SignInViewController.m
//  NSUserDefaults Challenge
//
//  Created by OSX on 6/4/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Button handling

// Method to handle when the loginButton button in the menu bar is clicked
- (IBAction)loginButtonClicked:(id)sender
{
    [self performSegueWithIdentifier:@"toOriginalViewControllerSegue" sender:self]; //............... segues to the originalVC
}
    

// Method to handle when the createAccount button in the menu bar is clicked
- (IBAction)createButtonClicked:(id)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:self]; //............... segues to the CreateAccountVC
}

@end
