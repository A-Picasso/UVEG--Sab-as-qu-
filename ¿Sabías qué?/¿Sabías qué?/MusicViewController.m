//
//  MusicViewController.m
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/22/24.
//

#import "MusicViewController.h"

@interface MusicViewController ()

@property (nonatomic, strong) NSArray *musicFacts;

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factLabel.numberOfLines = 0;
    self.factLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.musicFacts = @[
        @{@"fact": @"El álbum “Once Upon a Time in Shaolin” del grupo Wu-Tang Clan. Es conocido por ser el más caro en la historia de la música, ya que fue vendido en una subasta por 4 millones de dólares. Lo que hace aún más especial a este álbum es que se produjo una única copia física, esto lo convierte en una pieza de coleccionista extremadamente exclusiva.", @"image": [UIImage imageNamed:@"music_image_1"]},
        @{@"fact": @"Fela Kuti, conocido como el creador del Afrobeat, fue un multiinstrumentista, cantautor, y activista político cuya música tuvo una influencia enorme desde los años 70 hasta los 90. Además de su talento musical, Fela era conocido por su activismo político, utilizando su música como una herramienta para protestar contra la corrupción y la injusticia social en Nigeria. Durante su vida, tuvo que declarar 356 veces frente a un tribunal de justicia y fue detenido y encarcelado por la policía en varias ocasiones.", @"image": [UIImage imageNamed:@"music_image_2"]}
    ];
    [self showRandomFact];
    
}

- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)showRandomFact {
    NSDictionary *currentFact = self.musicFacts[self.currentFactIndex];
      self.factLabel.text = currentFact[@"fact"];
      self.imageView.image = currentFact[@"image"];
}

@end
