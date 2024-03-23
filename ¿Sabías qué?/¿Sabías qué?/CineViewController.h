//
//  CineViewController.h
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/20/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CineViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *factLabel;
@property (nonatomic) NSUInteger currentFactIndex;

@end

NS_ASSUME_NONNULL_END
