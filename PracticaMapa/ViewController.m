//
//  ViewController.m
//  PracticaMapa
//
//  Created by D C on 3/26/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "ViewController.h"
#import "CellTable.h"
#import "MapViewController.h"

@interface ViewController (){
    NSMutableArray *arreglo;
    NSMutableArray *imagenes;
    
    NSString *texto;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    arreglo=[[NSMutableArray alloc]initWithObjects:@"Estadio Jalisco",@"Chapala",@"Puente Matute Remus",@"Plaza Andares",@"Instituto Cultural Cabañas", nil];
    imagenes=[[NSMutableArray alloc]initWithObjects:[UIImage imageNamed:@"estadio.jpg"],[UIImage imageNamed:@"chapala.jpg"],[UIImage imageNamed:@"remus.jpg"],[UIImage imageNamed:@"andares.jpg"],[UIImage imageNamed:@"cabanas.jpg"], nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Para mandar a la siguiente ventana un valor
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detail"]) {
        
        MapViewController *destViewController = segue.destinationViewController;
        destViewController.nombre =  texto;
        
    }
}

#pragma mark TableViewDataSource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    //Regresa el numero de secciones en la tabla
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    //regresa el numero de celdas en nuestra tabla
    return [arreglo count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CellTable *cell;
    static NSString *simpleTableIdentifier = @"cell";
    
    cell = (CellTable *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        //NSArray *nib = [[NSBundle mainBundle] loadNibNamed:simpleTableIdentifier owner:self options:nil];
        //cell = [nib objectAtIndex:0];
        cell =[[CellTable alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.nombre.text=[arreglo objectAtIndex:indexPath.row];
    cell.numero.text=[NSString stringWithFormat:@"%ld", (long)indexPath.row];
    cell.image.image=[imagenes objectAtIndex:indexPath.row];
    
    return cell;
    
}


#pragma mark UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    texto=arreglo[indexPath.row];
    NSLog(@"texto: %@", texto);
    
    [self performSegueWithIdentifier:@"detail" sender:texto];
    
}
@end
