//
//  ViewController.m
//  Controls
//
//  Created by Vasilii on 24.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
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

-(void)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder]; //снимаем роль реагирующего объекта с предыдущего
}

-(void)backgroundTab:(id)sender {
    [_nameField resignFirstResponder];
    [_numberField resignFirstResponder];
}

@end
