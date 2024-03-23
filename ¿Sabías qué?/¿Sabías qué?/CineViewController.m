//
//  CineViewController.m
//  ¿Sabías qué?
//
//  Created by José Alberto Picasso Martínez on 3/20/24.
//

#import "CineViewController.h"

@interface CineViewController ()

@property (nonatomic, strong) NSArray *cineFacts;

@end

@implementation CineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.factLabel.numberOfLines = 0;
    self.factLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.cineFacts = @[
        @{@"fact": @"La película “Macario”, dirigida por Roberto Gavaldón. Estrenada en 1960, fue la primera película mexicana en ser nominada al Oscar a Mejor Película Extranjera. Aunque no ganó el premio, su nominación abrió las puertas a los cineastas mexicanos en la industria de Hollywood. La película es una adaptación de la novela homónima del escritor alemán Bruno Traven y del cuento “El Padrino y El Padrino de la Muerte” de los Hermanos Grimm.", @"image": [UIImage imageNamed:@"cinema_image_1"]},
        @{@"fact": @"“Logistics”, es considerada la película de mayor duración en la historia del cine. Esta película experimental sueca, creada por Erika Magnusson y Daniel Andersson, tiene una duración de 857 horas, es decir, 35 días y 17 horas. “Logistics” sigue el ciclo de vida de un producto manufacturado, desde su venta hasta sus orígenes, y fue diseñada para ser vista en galerías de arte, donde se supone que la audiencia puede pasar caminando de un lado a otro, experimentando fragmentos de la película a su propio ritmo.", @"image": [UIImage imageNamed:@"cinema_image_2"]}
    ];
    [self showRandomFact];
}

- (IBAction)closeButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)showRandomFact {
    NSDictionary *currentFact = self.cineFacts[self.currentFactIndex];

      self.factLabel.text = currentFact[@"fact"];
      self.imageView.image = currentFact[@"image"];
}

@end
