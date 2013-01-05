//
//  PrincipalViewController.h
//  CelulasCustomizadas
//
//  Created by Rafael Brigagão Paulino on 25/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CelulaCD.h"

@interface PrincipalViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, CelulaCDDelegate>

@property(nonatomic, weak) IBOutlet UITableView *tabela;

@end
