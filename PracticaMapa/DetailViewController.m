//
//  DetailViewController.m
//  PracticaMapa
//
//  Created by D C on 3/27/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"

@interface DetailViewController (){
    NSString *Seleccionado;
    CLLocationCoordinate2D location1;
    MKPointAnnotation *annot;
}


@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    AppDelegate* Dato_algo = (AppDelegate *)([[UIApplication sharedApplication]delegate]);
    Seleccionado=Dato_algo.nombre;
    NSLog(@"nombre que trae: %@",Seleccionado);
    [self compare];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)compare{
    if([Seleccionado isEqualToString:@"Estadio Jalisco"]){
        
        self.image.image=[UIImage imageNamed:@"estadio2.jpg"];
        self.descripcion.text=@"El Estadio Jalisco es un estadio de fútbol ubicado en Guadalajara, Jalisco, México. Con una capacidad de 63.163 espectadores. Fue fundado en 1960, y ha sido sede en la Copa Mundial de Fútbol de 1970 y Copa Mundial de Fútbol de 1986.";
        location1.latitude = (double)20.705206;
        location1.longitude = (double)-103.328177;
        
    }else if([Seleccionado isEqualToString:@"Chapala"]){
        
         self.image.image=[UIImage imageNamed:@"chapala2.jpg"];
        self.descripcion.text=@"El lago de Chapala es un embalse natural de México localizado principalmente en el estado de Jalisco. La laguna tiene una capacidad total de aproximadamente 8000 Millones de metros cúbicos (Mm3) y una superficie total de 114659 hectáreas (ha), de las cuales Jalisco ocupa el 86% y Michoacán el 14%. ";
        
        location1.latitude = (double)20.286325;
        location1.longitude = (double)-103.193997;
        
        
        
       
        
    }else if([Seleccionado isEqualToString:@"Puente Matute Remus"]){
         self.image.image=[UIImage imageNamed:@"remus2.jpg"];
        self.descripcion.text=@"El Puente Matute Remus es un Puente atirantado ubicado en el estado de Jalisco, México. Esta obra forma parte de un sistema de puentes que localizados sobre la calzada Lázaro Cárdenas, en el cruce con la avenida López Mateos, una de las más transitadas de la ciudad y que además atraviesa los 4 municipios centrales de la Zona Metropolitana de Guadalajara. ";
        location1.latitude = (double)20.664832;
        location1.longitude = (double)-103.393732;
        
    }else if([Seleccionado isEqualToString:@"Plaza Andares"]){
         self.image.image=[UIImage imageNamed:@"andares2.jpg"];
        self.descripcion.text=@"Andares, mega-desarrollo con más de 13.3 hectáreas de extensión, ofrece en un solo lugar, un estilo de vida diferente, al combinar el mayor centro comercial del occidente mexicano, 9 torres de departamentos, 2 torres de corporativos de negocios y una torre de usos mixtos.";
        location1.latitude = (double)20.710299;
        location1.longitude = (double)-103.412140;
    }else if([Seleccionado isEqualToString:@"Instituto Cultural Cabañas"]){
         self.image.image=[UIImage imageNamed:@"cabañas2.jpg"];
        self.descripcion.text=@"El Instituto Cultural Cabañas, mejor conocido como Hospicio Cabañas, es un edificio de estilo neoclásico, emblemático de la ciudad mexicana de Guadalajara. En su interior se conservan algunos murales de José Clemente Orozco. Fue declarado en 1997 Patrimonio de la Humanidad por la Unesco.";
        location1.latitude = (double)20.677027;
        location1.longitude = (double)-103.337324;
               
    }
    
}
- (IBAction)comoLlegar:(id)sender {
    
    NSString* addr = [NSString stringWithFormat:@"http://maps.apple.com/maps?daddr=%1.6f,%1.6f&saddr=Posizione attuale", location1.latitude,location1.longitude];
    NSURL* url = [[NSURL alloc] initWithString:[addr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [[UIApplication sharedApplication] openURL:url];
    
}
// Add the following method
//- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
//    MyLocation *location = (MyLocation*)view.annotation;
//    
//    NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
//    [location.mapItem openInMapsWithLaunchOptions:launchOptions];
//}


@end
