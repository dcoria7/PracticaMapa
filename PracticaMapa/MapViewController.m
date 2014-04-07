//
//  MapViewController.m
//  PracticaMapa
//
//  Created by D C on 3/27/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import "MapViewController.h"
#import "DetailViewController.h"
#import "AppDelegate.h"


@interface MapViewController (){
    NSString *Seleccionado;
    NSString *latitude;
    NSString *longitude;
    MKPointAnnotation *annot;
    
    CLLocationCoordinate2D location1;
    MKPinAnnotationView* anno;
    
}

@end

@implementation MapViewController

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
    self.mapView.delegate = self;

    // Do any additional setup after loading the view.
    Seleccionado=self.nombre;
    NSLog(@"--- %@",Seleccionado);
    [self compare];
    [self mapa];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)compare{
    if([Seleccionado isEqualToString:@"Estadio Jalisco"]){
        location1.latitude = (double)20.705206;
        location1.longitude = (double)-103.328177;
        
    }else if([Seleccionado isEqualToString:@"Chapala"]){
        
        location1.latitude = (double)20.286325;
        location1.longitude = (double)-103.193997;
        
       
    }else if([Seleccionado isEqualToString:@"Puente Matute Remus"]){
        location1.latitude = (double)20.664832;
        location1.longitude = (double)-103.393732;
        
    }else if([Seleccionado isEqualToString:@"Plaza Andares"]){
        location1.latitude = (double)20.710299;
        location1.longitude = (double)-103.412140;
        
        
    }else if([Seleccionado isEqualToString:@"Instituto Cultural Cabañas"]){
        
        location1.latitude = (double)20.677027;
        location1.longitude = (double)-103.337324;
        
    }
    
    
}

-(void)mapa{
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = CLLocationCoordinate2DMake(location1.latitude,location1.longitude);
    point.title = Seleccionado;
   // point.subtitle = @"subtitle";
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(location1, 1000, 1000);
    
    [self.mapView setRegion:viewRegion animated:YES];
    [self.mapView addAnnotation:point];
    

}

#pragma mark Delegate Methods


-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    
    AppDelegate* Dato_algo = (AppDelegate *)([[UIApplication sharedApplication]delegate]);
    Dato_algo.nombre=Seleccionado;
    
    DetailViewController  *detail = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    [self.navigationController pushViewController:detail animated:YES];
    
    
}
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation

{
    anno = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
    anno.canShowCallout = YES;
    anno.pinColor = MKPinAnnotationColorRed;
    
    anno.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return anno;
}

@end
