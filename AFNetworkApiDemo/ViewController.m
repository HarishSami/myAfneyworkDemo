//
//  ViewController.m
//  AFNetworkApiDemo
//
//  Created by Intellisense Technology on 02/02/17.
//  Copyright © 2017 intellisense Technology. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableDictionary*jsonData;
}
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
-(void)login{
    NSMutableDictionary *dictParam=[[NSMutableDictionary alloc]init];
    
//    
//    [dictParam setValue: forKey:@"key"];
//    [dictParam setValue: forKey:@"username"];
//    [dictParam setValue: forKey:@"contactname"];
    
    NSLog(@"dictParam==%@",dictParam);
    
    AFNHelper *afn=[[AFNHelper alloc]initWithRequestMethod:POST_METHOD];
    
    [afn getDataFromPath:@"create_user.php" withParamData:dictParam withBlock:^(id response, NSError *error)
     {
         if (response)
         {
             if([[response valueForKey:@"success"] boolValue])
             {
                 NSLog(@"response==%@",response);
                 jsonData=response;
                 NSLog(@"json data===%@",jsonData);
                 if ([[jsonData objectForKey:@"success"] integerValue] ==1)
                 {
                     
                 }
                 else if([[jsonData objectForKey:@"success"] integerValue] ==0)
                 {
                     
                 }
             }
         }
         
     }];
     
}
@end
