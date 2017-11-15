//
//  ViewController.m
//  CatApp
//
//  Created by Mac on 2017/11/14.
//  Copyright © 2017年 Sunny Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.catButton.imageView.contentMode = UIViewContentModeScaleAspectFit;
  self.label.hidden = YES;
  
  NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
  AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)theCat:(id)sender {
  self.label.hidden = NO;
  AudioServicesPlaySystemSound(soundID);
  [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(catDelay) userInfo:nil repeats:NO];
}

- (void)catDelay {
  self.label.hidden = YES;
}


@end
