//
//  OriginalViewController.m
//  NSUserDefaults Challenge
//
//  Created by OSX on 6/4/15.
//  Copyright (c) 2015 LebonTech solutions. All rights reserved.
//

#import "OriginalViewController.h"

@interface OriginalViewController ()

@end

@implementation OriginalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *defaultInfo = [NSUserDefaults standardUserDefaults];
    
    self.passwordLabel.text = [defaultInfo objectForKey:USER_PASSWORD];
    self.usernameLabel.text = [defaultInfo objectForKey:USER_NAME];
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

@end
