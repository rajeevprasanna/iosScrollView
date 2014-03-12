//
//  ViewController.m
//  scrollViewWithPaging
//
//  Created by Rajeev Kumar on 12/03/14.
//  Copyright (c) 2014 rajeev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor blueColor], [UIColor greenColor], [UIColor yellowColor],  nil];
    
    for(int i=0; i<colors.count; i++){
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.size = self.scrollView.frame.size;
        self.scrollView.pagingEnabled = YES;
        
        UIView *subView = [[UIView alloc] initWithFrame:frame];
        subView.backgroundColor = [colors objectAtIndex:i];
        [self.scrollView addSubview:subView];
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * colors.count, self.scrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
