//
//  MapViewController.h
//  PracticaMapa
//
//  Created by D C on 3/27/14.
//  Copyright (c) 2014 D C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController<MKMapViewDelegate>

@property (strong, nonatomic) NSString *nombre;


@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@end
