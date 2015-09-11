//
//  ViewController.m
//  BDMapDemo
//
//  Created by 孙菲 on 15/8/13.
//  Copyright (c) 2015年 孙菲. All rights reserved.
//

#import "ViewController.h"
//#import <BaiduMapAPI/BMKMapView.h>
#import <BaiduMapAPI/BMapKit.h>
#import <CoreLocation/CLBeaconRegion.h>
@interface ViewController ()<BMKMapViewDelegate>
@property (nonatomic,strong)BMKMapView * mapView;
@end

@implementation ViewController
{
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [_mapView viewWillAppear];
    _mapView.delegate =self;
    [super viewWillAppear:animated];
   
}

-(void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate =nil;
    [super viewWillDisappear:animated];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _mapView = [[BMKMapView alloc]initWithFrame:self.view.bounds];
    BMKPointAnnotation * annotation = [[BMKPointAnnotation alloc]init];
    CLLocationCoordinate2D coor;
    coor.latitude = 39.915;
    coor.longitude = 116.404;
    annotation.coordinate = coor;
    annotation.title = @"北京";
    [_mapView addAnnotation:annotation];
    
//    [_mapView setMapType:BMKMapTypeStandard];
    [self.view addSubview:_mapView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
