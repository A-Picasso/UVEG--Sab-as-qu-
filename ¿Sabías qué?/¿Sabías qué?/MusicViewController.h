//
//  MusicViewController.h
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/22/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MusicViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *factLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic) NSUInteger currentFactIndex;

@end

NS_ASSUME_NONNULL_END
