//
//  ViewController.h
//  CatApp
//
//  Created by Mac on 2017/11/14.
//  Copyright © 2017年 Sunny Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
  SystemSoundID soundID;
}
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)theCat:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *catButton;

@end

