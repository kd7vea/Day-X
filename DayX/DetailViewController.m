//
//  DetailViewController.m
//  DayX
//
//  Created by Jake Estepp on 9/23/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//
//correct version
#import "DetailViewController.h"
#import "EntryController.h"


@interface DetailViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;
}

-(IBAction)clearActionTapped:(id)sender{
        self.textField.text = @"";
        self.textView.text = @"";
}
    
-(IBAction)saveButtonTapped:(id)sender{
    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.bodyText = self.textView.text;
        self.entry.timeStamp = [NSDate date];
    }else{
        self.entry = [[EntryController sharedInstance] createEntryWithTitle:self.textField.text bodyText:self.textView.text];
    }
    
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
