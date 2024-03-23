//
//  ViewController.m
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/18/24.
//

#import "ViewController.h"
#import "CineViewController.h"
#import "PhotoViewController.h"
#import "MusicViewController.h"

@interface ViewController ()

@property (nonatomic) NSUInteger currentFactIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentFactIndex = 0;
}

- (IBAction)closeButton:(id)sender {
    exit(0);
}

- (IBAction)cineButton:(id)sender {
    if (self.currentFactIndex >= 2 ) {
      self.currentFactIndex = 0;
    }
    CineViewController *cineVC = [[CineViewController alloc] init];
    cineVC.currentFactIndex = self.currentFactIndex;
    [self presentViewController:cineVC animated:YES completion:nil];
    self.currentFactIndex++;
}

- (IBAction)photoButton:(id)sender {
    if (self.currentFactIndex >= 2 ) {
      self.currentFactIndex = 0;
    }
    PhotoViewController *photoVC = [[PhotoViewController alloc] init];
    photoVC.currentFactIndex = self.currentFactIndex;
    [self presentViewController:photoVC animated:YES completion:nil];
    self.currentFactIndex++;
}

- (IBAction)musicButton:(id)sender {
    if (self.currentFactIndex >= 2 ) {
      self.currentFactIndex = 0;
    }
    MusicViewController *musicVC = [[MusicViewController alloc] init];
    musicVC.currentFactIndex = self.currentFactIndex;
    [self presentViewController:musicVC animated:YES completion:nil];
    self.currentFactIndex++;
}


@end
