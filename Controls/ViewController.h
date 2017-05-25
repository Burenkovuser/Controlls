//
//  ViewController.h
//  Controls
//
//  Created by Vasilii on 24.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController<UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sladerLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;


-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTab:(id)sender;
- (IBAction)sladerChanged:(UISlider *)sender;
- (IBAction)swiftChanged:(UISwitch *)sender;
- (IBAction)toogleControl:(UISegmentedControl *)sender;
- (IBAction)buttonPressed:(id)sender;




@end

