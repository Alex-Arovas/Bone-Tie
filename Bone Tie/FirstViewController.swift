//
//  FirstViewController.swift
//  Bone Tie
//
//  Created by iD Student on 7/13/15.
//  Copyright (c) 2015 iD Student. All rights reserved.
//
import UIKit
import MapKit
import Foundation
class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var Latitude: String = "1N,"
    var Longitude: String = "1W"
    var Lat: CLLocationDegrees = 1
    var Long: CLLocationDegrees = -90
    
    override func viewDidLoad() {
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(Lat, Long)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = ""//dogName
        mapView.addAnnotation(annotation)
    }
    override func viewDidAppear(animated: Bool) {
        self.locationManager = CLLocationManager()
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        self.mapView.showsUserLocation = true
    }
    
    @IBAction func Directions(sender: AnyObject) {
        if let url = NSURL(string: "http://maps.apple.com/?q=\(Latitude)\(Longitude)") {
            let app = UIApplication.sharedApplication()
            app.openURL(url)
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

