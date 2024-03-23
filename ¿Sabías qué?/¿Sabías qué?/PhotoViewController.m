//
//  PhotoViewController.m
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/22/24.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@property (nonatomic, strong) NSArray *photoFacts;

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factLabel.numberOfLines = 0;
    self.factLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.photoFacts = @[
        @{@"fact": @"La obra “The Phantom” del fotógrafo Peter Lik. Se convirtió en la fotografía mejor pagada de toda la historia al ser vendida por 6.5 millones de dólares. “The Phantom” captura el interior de una formación rocosa en el Cañón del Antílope, en Arizona, Estados Unidos. Lo más destacado de la fotografía es un halo de luz definido que crea una atmósfera única y casi etérea.", @"image": [UIImage imageNamed:@"photography_image_1"]},
        @{@"fact": @"La fotógrafa Graciela Iturbide es una reconocida fotógrafa mexicana conocida por su impactante trabajo documental que captura la cultura y la vida cotidiana en México. Iturbide ha recibido numerosos premios y reconocimientos a lo largo de su carrera, incluido el prestigioso Premio Hasselblad en 2008. Su fotografía se caracteriza por su enfoque en las comunidades indígenas mexicanas, la naturaleza y la simbología cultural.", @"image": [UIImage imageNamed:@"photography_image_2"]}
    ];
    [self showRandomFact];
   
}


- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)showRandomFact {
    NSDictionary *currentFact = self.photoFacts[self.currentFactIndex];

      self.factLabel.text = currentFact[@"fact"];
      self.imageView.image = currentFact[@"image"];
    
}


@end
