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
    
    self.sladerLabel.text = @"50";// чтобы пользователь увидел значение 50 сразу после загрузки
    
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

- (IBAction)sladerChanged:(UISlider *)sender {
    int progress = (int)lroundf(sender.value);//определяем текущее значение и округляем до целого
    self.sladerLabel.text = [NSString stringWithFormat:@"%d",progress];
}

- (IBAction)swiftChanged:(UISwitch *)sender {
    BOOL setiing = sender.isOn;
    [self.leftSwitch setOn:setiing animated:YES];
    
}

- (IBAction)toogleControl:(UISegmentedControl *)sender {
    // 0== переключает индекс
    if (sender.selectedSegmentIndex == 0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }else{
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Are you sure?"
                                                             delegate:self
                                                    cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes, I'm Sure!" otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        if (self.nameField.text.length > 0) msg = [[NSString alloc] initWithFormat:
                                                   @"You can breathe easy, %@, everything went OK.",
                                                   self.nameField.text]; else
                                                       msg = @"You can breathe easy, everything went OK.";
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something was done"
                                                        message:msg
                                                       delegate:self cancelButtonTitle:@"Phew!"
                                              otherButtonTitles:nil];
        [alert show]; }
}

@end
