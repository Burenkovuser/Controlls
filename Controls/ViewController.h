//
//  ViewController.h
//  Controls
//
//  Created by Vasilii on 24.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;

-(IBAction)textFieldDoneEditing:(id)sender;
-(IBAction)backgroundTab:(id)sender;

@end

