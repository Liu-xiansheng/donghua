//
//  NextViewController.m
//  donghua
//
//  Created by mac on 16/3/15.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *nextView;
@property (weak, nonatomic) IBOutlet UIView *secoundView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSLog(@"%f",self.nextView.center.x);
//    NSLog(@"%f",self.view.bounds.size.width);
    
    self.textView.editable = NO;//不可编辑
    self.textView.selectable = YES;
       self.textView.dataDetectorTypes = UIDataDetectorTypeLink;
    NSMutableAttributedString *muAttributedStr = [[NSMutableAttributedString alloc] initWithString:@"今天星期二"];
    NSURL *url = [NSURL URLWithString:@"https://www.baidu.com"];
    [muAttributedStr addAttribute:NSLinkAttributeName value:url range:NSMakeRange(2, 2)];
//    [muAttributedStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18.0] range:NSMakeRange(2, 2)];
    self.textView.attributedText = muAttributedStr;
//    [self.view addSubview:tipsTextView];

    
    
}


- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    NSLog(@"=============%@",URL);
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    
    [UIView animateWithDuration:1.0 animations:^{
        
        //写代码之前把[tu.png]看一下。修改一下
        
        self.nextView.center = CGPointMake( self.view.bounds.size.width - self.nextView.center.x,self.nextView.center.y);
        
        
        for (int i = 0; i < 20; i++) {
            
            self.secoundView.center = CGPointMake(self.secoundView.center.x + 10,self.secoundView.center.y );
        }
        
        
//         self.secoundView.center = CGPointMake(self.secoundView.center.x + 100,self.secoundView.center.y + 100);
        
        
    }];

    [UIView animateWithDuration:3.0 animations:^{
        
        for (int i = 0; i < 10; i++) {
            
            self.secoundView.center = CGPointMake(self.secoundView.center.x ,self.secoundView.center.y + 10);
        }
    }];
    
    [UIView animateWithDuration:5.0 animations:^{
        
        for (int i = 0; i < 10; i++) {
            
            self.secoundView.center = CGPointMake(self.secoundView.center.x ,self.secoundView.center.y + 10);
        }
    }];

    
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
