//
//  CelulaCD.m
//  CelulasCustomizadas
//
//  Created by Rafael Brigagão Paulino on 25/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "CelulaCD.h"

@implementation CelulaCD

//para mudar a label viacodigo
//quando uma interface é carregada do storyboard é esse metodo que é chamado
/*
 -(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _lblQuantidade.text = @"Haduna Matata";
    }
    return self;
}
 */

//metodo acionado quando um elementoesta se desenhado
/*
-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    _lblQuantidade.text = @"-234";
}
 */
 

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    //para mudar otexto da label via codigo tb
    //_lblQuantidade.text = @"Haduna Matata";

    // Configure the view for the selected state
}

-(IBAction)stepperMudou:(id)sender
{
    //mudar a quantidade da label do cd
    _lblQuantidade.text = [NSString stringWithFormat:@"%1.0lf",_stepper.value];
    
    //descobrir em qual linha e secao estamos (indexpath)
    UITableView *tabelaPai = (UITableView*)[self superview];
    NSIndexPath *indexPathAQuePertenco = [tabelaPai indexPathForCell:self];
    
    //no momento em que o usuario mudar o stepper, teremos que avisar nossa tela, atraves da propriedade delegate
    [_delegate mudaramValorQuantidadePara:[NSNumber numberWithInt:(int)_stepper.value] noIndexPath:indexPathAQuePertenco];
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //sempre quando for customizar a funcionalidade de um elemento e for sobreescrever um metodo que possivelmente ja foi implementado na classe pai, obedecer aquilo que ja foi implementado
    [super touchesBegan:touches withEvent:event];
    
    NSLog(@"Celula foi clicada e estou captando o evento de dentro da celula");
}

@end
