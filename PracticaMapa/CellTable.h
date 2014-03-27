//
//  CellTable.h
//  PracticaMapa
//
//  Created by D C on 3/26/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellTable : UITableViewCell

@property(weak,nonatomic)IBOutlet UILabel *numero;
@property(weak,nonatomic)IBOutlet UILabel *nombre;
@property(weak,nonatomic)IBOutlet UIImageView *image;

@end
