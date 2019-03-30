//
//  ViewController.m
//  BackgroundMusic
//
//  Created by Pavel Akhrameev on 13.12.2018.
//  Copyright © 2018 UP. All rights reserved.
//

#import "ViewController.h"
#import "AVFoundation/AVFoundation.h"

@interface ViewController ()
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"0917"
                                         ofType:@"mp3"]];
    _audioPlayer = [[AVAudioPlayer alloc]
                    initWithContentsOfURL:url
                    error:nil];
    _audioPlayer.numberOfLoops = -1;
    [_audioPlayer play];
}


@end
