//
//  ViewController3.m
//  pageViewController
//
//  Created by Shashwat Mittal on 21/8/2015.
//  Copyright (c) 2015 Shashwat Mittal. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
{
    UIImagePickerController *imagePicker;
}
@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // This if condition statement will load a Camera if it is available on the device. Note: It will not run on simulator.
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:imagePicker animated:YES completion:nil];
    }
    else
    {
        NSLog(@"Camera Not Available");
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
