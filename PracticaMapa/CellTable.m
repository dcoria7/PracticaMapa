//
//  CellTable.m
//  PracticaMapa
//
//  Created by D C on 3/26/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "CellTable.h"

@interface CellTable ()

@end

@implementation CellTable

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
    
    // Configure the view for the selected state
}

@end
