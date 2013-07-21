//
//  ViewController.m
//  DaruDasu
//
//  Created by shahid on 7/7/13.
//
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "OurWorldViewController.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark- Action Method



- (void)endFirstResponder:(id)sender
{
    [_txtUserName resignFirstResponder];
    [_txtPassword resignFirstResponder];
}

- (IBAction)onClickRegisterButton:(id)sender {
    
    OurWorldViewController *_OurWorldViewController = [[OurWorldViewController alloc]initWithNibName:@"OurWorldViewController" bundle:nil];
    [self presentViewController:_OurWorldViewController animated:YES completion:nil];
                                                       
//    RegisterViewController *registerViewController = [[RegisterViewController alloc]initWithNibName:@"RegisterViewController" bundle:nil];
//    [self presentViewController:registerViewController animated:YES completion:nil];
}

- (IBAction)onClickSignInButton:(id)sender {
    
    [_txtPassword resignFirstResponder];
    [_txtUserName resignFirstResponder];
    
    if (!_txtUserName.text.length || ![(NSString*)(_txtUserName.text) stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Please enter the user name" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        alert = nil;
        return;
    }
    
    if (!_txtPassword.text.length || ![(NSString*)(_txtPassword.text) stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Alert" message:@"Please enter the Password" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        alert = nil;
        return;
    }
}

@end
