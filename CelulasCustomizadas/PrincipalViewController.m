//
//  PrincipalViewController.m
//  CelulasCustomizadas
//
//  Created by Rafael Brigagão Paulino on 25/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalViewController.h"


@interface PrincipalViewController ()
{
    NSMutableArray *arrayDeCds;
}

@end

@implementation PrincipalViewController

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1; 
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayDeCds count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *idCelula = @"idCelula";
    
    
    
    //esse metodo procura no storyboard por um protopito com o identificador passdo. cado nao tenha celula para reciclgem, ele cria uma nova célula baseando-se no protopipo do sb. caso tenha celula para reciclar, ele recicla
    CelulaCD *cell = [tableView dequeueReusableCellWithIdentifier:idCelula];
    
    //avisar para a celula que os eventos que ocorrerem dentro dela deverao ser enviados para nos
    cell.delegate = self;
    
    //configurar a celula
    NSMutableDictionary *dicCD = [arrayDeCds objectAtIndex:indexPath.row];
    
    cell.lblNomeCD.text = [dicCD objectForKey:@"nomeCD"];
    cell.lblNomeArtista.text = [dicCD objectForKey:@"nomeArtista"];
    cell.lblPreco.text = [dicCD objectForKey:@"preco"];
    cell.imgvCapa.image = [UIImage imageNamed:[dicCD objectForKey:@"imagemCapa"]];
    cell.lblQuantidade.text = [dicCD objectForKey:@"quantidade"];

    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Celula selecionada");
}

//metodo acionado quando o usuario interage com o stepper dentro da celula
-(void)mudaramValorQuantidadePara:(NSNumber *)quantidade noIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary *dicCD = [arrayDeCds objectAtIndex:indexPath.row];
    
    [dicCD setObject:[NSString stringWithFormat:@"%d", [quantidade intValue]] forKey:@"quantidade"];
    
    NSLog(@"%@", arrayDeCds.description);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrayDeCds = [[NSMutableArray alloc] init];
    
    //queen
    NSMutableDictionary *dicionarioCD = [[NSMutableDictionary alloc] init];
    
    [dicionarioCD setObject:@"Queen" forKey:@"nomeArtista"];
    [dicionarioCD setObject:@"Greatest Hists I" forKey:@"nomeCD"];
    [dicionarioCD setObject:@"29.00" forKey:@"preco"];
    [dicionarioCD setObject:@"greatesthits_queen.jpg" forKey:@"imagemCapa"];
    [dicionarioCD setObject:@"0" forKey:@"quantidade"];
    
    [arrayDeCds addObject:dicionarioCD];
    
    //coldplay
    dicionarioCD = [[NSMutableDictionary alloc] init];
    
    [dicionarioCD setObject:@"Cold Play" forKey:@"nomeArtista"];
    [dicionarioCD setObject:@"Parachutes" forKey:@"nomeCD"];
    [dicionarioCD setObject:@"35.00" forKey:@"preco"];
    [dicionarioCD setObject:@"parachutes_coldplay.jpg" forKey:@"imagemCapa"];
    [dicionarioCD setObject:@"0" forKey:@"quantidade"];
    
    [arrayDeCds addObject:dicionarioCD];
    
    
    //loney dear
    dicionarioCD = [[NSMutableDictionary alloc] init];
    
    [dicionarioCD setObject:@"Loney Dear" forKey:@"nomeArtista"];
    [dicionarioCD setObject:@"Citadel Band" forKey:@"nomeCD"];
    [dicionarioCD setObject:@"45.00" forKey:@"preco"];
    [dicionarioCD setObject:@"citadelband_loneydear.jpg" forKey:@"imagemCapa"];
    [dicionarioCD setObject:@"0" forKey:@"quantidade"];
    
    [arrayDeCds addObject:dicionarioCD];
    
    
    //regina spektor
    dicionarioCD = [[NSMutableDictionary alloc] init];
    
    [dicionarioCD setObject:@"Regina Spektor" forKey:@"nomeArtista"];
    [dicionarioCD setObject:@"Begin to Hope" forKey:@"nomeCD"];
    [dicionarioCD setObject:@"40.00" forKey:@"preco"];
    [dicionarioCD setObject:@"begintohope_reginaspektor.jpg" forKey:@"imagemCapa"];
    [dicionarioCD setObject:@"0" forKey:@"quantidade"];
    
    [arrayDeCds addObject:dicionarioCD];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
