//
//  CelulaCD.h
//  CelulasCustomizadas
//
//  Created by Rafael Brigagão Paulino on 25/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>

//esse protocolo serve para obrigar o delegate a implementar o metodo listado nele
@protocol CelulaCDDelegate <NSObject>

@required
-(void)mudaramValorQuantidadePara:(NSNumber*)quantidade noIndexPath:(NSIndexPath*)indexPath;

@end


@interface CelulaCD : UITableViewCell
//propriedas da celula customizada que ficara disponivel para setar no momento em que a criamos

@property (nonatomic, strong) IBOutlet UILabel *lblNomeCD, *lblNomeArtista, *lblPreco, *lblQuantidade;
@property (nonatomic, strong) IBOutlet UIImageView *imgvCapa;
@property (nonatomic, strong) IBOutlet UIStepper *stepper;

//criando a propriedade onde iremos guradar a instancia do objeto que sera acionado quando ocorrer um evento. Por mais que seja ID, ou seja, quakquer tipo, esse objeto terá que implementar o protocolo do delegate
@property (nonatomic, weak) id <CelulaCDDelegate> delegate;

-(IBAction)stepperMudou:(id)sender;

@end
