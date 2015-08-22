//
//  pageViewController.m
//  pageViewController
//
//  Created by Shashwat Mittal on 21/8/2015.
//  Copyright (c) 2015 Shashwat Mittal. All rights reserved.
//

#import "pageViewController.h"

@interface pageViewController ()
{
    NSArray *childViewArray;          //An Array to hold all the child views.
}
@end

@implementation pageViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Inititalising the storyboard and the child views from the storyboard.
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *childView1 = [storyBoard instantiateViewControllerWithIdentifier:@"first"];
    UIViewController *childView2 = [storyBoard instantiateViewControllerWithIdentifier:@"second"];
    UIViewController *childView3 = [storyBoard instantiateViewControllerWithIdentifier:@"third"];
    
    // Adding the child views to the child view array.
    
    childViewArray = @[childView1, childView2, childView3];

    // Set the first view child view to appear on the view controller.
    
    [self setViewControllers:@[childView1] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    // Set the data souce and the delegate for the PageViewController.
    
    self.delegate =self;
    self.dataSource = self;

    
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSInteger index = [childViewArray indexOfObject:viewController];
    if (index == 2) {
        return nil;
    }
    else
    {
        index++;
        return [childViewArray objectAtIndex:index];
    }
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSInteger index = [childViewArray indexOfObject:viewController];
    if (index == 0) {
        return nil;
    }
    else
    {
        index--;
        return [childViewArray objectAtIndex:index];
    }

}

-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [childViewArray count];
}

-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
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
