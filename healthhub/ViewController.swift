//
//  ViewController.swift
//  healthhub
//
//  Created by Nathan Tjoar on 1/31/20.
//  Copyright © 2020 Nathan Tjoar. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
        marker2.title = "Los Angeles"
        marker2.snippet = "Test\nTry\nto\noverload\nthis\n" // 4 LINES
        marker2.map = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

