//
//  ViewController.swift
//  healthhub
//
//  Created by Nathan Tjoar on 1/31/20.
//  Copyright © 2020 Nathan Tjoar. All rights reserved.
//

import UIKit
import GoogleMaps
import Firebase
import FirebaseAuth
import FirebaseCore
import FirebaseFirestoreSwift

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        var id = ["0", "1", "2", "3", "4", "5", "6"]

// MARK: - ID changer

        let docRef = db.collection("providers").document("United Healthcare")
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                /* ID 0 */
                guard let id0 = dataDescription!["0"] as? String else {
                    return
                }
                id[0] = id0
                /* ID 1 */
                guard let id1 = dataDescription!["1"] as? String else {
                    return
                }
                id[1] = id1
                
                /* ID 2 */
                guard let id2 = dataDescription!["2"] as? String else {
                    return
                }
                id[2] = id2
                
                /* ID 3 */
                guard let id3 = dataDescription!["3"] as? String else {
                    return
                }
                id[3] = id3
                /* ID 4 */
                guard let id4 = dataDescription!["4"] as? String else {
                    return
                }
                id[4] = id4
                
                /* ID 5 */
                guard let id5 = dataDescription!["5"] as? String else {
                    return
                }
                id[5] = id5
                
                /* ID 6 */
                guard let id6 = dataDescription!["6"] as? String else {
                    return
                }
                id[6] = id6
            }
        }
        
// MARK: - Camera and Map Init
        
        let camera = GMSCameraPosition.camera(withLatitude: 34, longitude: -118, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        self.view = mapView
        
// MARK: - docRef0
        let docRef0 = db.collection("practicioners").document(id[0])
        docRef0.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 0
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker0 = GMSMarker()
                    marker0.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker0.title = ct
                    marker0.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker0.map = mapView
            }
        }
            
// MARK: - docRef1
        let docRef1 = db.collection("practicioners").document(id[1])
        docRef1.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 1
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker1 = GMSMarker()
                    marker1.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker1.title = ct
                    marker1.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker1.map = mapView
            }
        }
        
// MARK: - docRef2
        let docRef2 = db.collection("practicioners").document(id[2])
        docRef2.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 2
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker2 = GMSMarker()
                    marker2.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker2.title = ct
                    marker2.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker2.map = mapView
            }
        }
        
// MARK: - docRef3
        let docRef3 = db.collection("practicioners").document(id[3])
        docRef3.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 3
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker3 = GMSMarker()
                    marker3.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker3.title = ct
                    marker3.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker3.map = mapView
            }
        }
        
// MARK: - docRef4
        let docRef4 = db.collection("practicioners").document(id[4])
        docRef4.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 4
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker4 = GMSMarker()
                    marker4.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker4.title = ct
                    marker4.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker4.map = mapView
            }
        }

// MARK: - docRef5
        let docRef5 = db.collection("practicioners").document(id[5])
        docRef5.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 5
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker5 = GMSMarker()
                    marker5.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker5.title = ct
                    marker5.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker5.map = mapView
            }
        }
        
// MARK: - docRef6
        let docRef6 = db.collection("practicioners").document(id[6])
        docRef6.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data()
                guard let latTemp = dataDescription!["Latitude"] as? String else {
                    return
                }
                let lat = Double(latTemp)!
                guard let lonTemp = dataDescription!["Longitude"] as? String else {
                    return
                }
                let lon = Double(lonTemp)!
                guard let city = dataDescription!["City"] as? String else {
                    return
                }
                let ct = city
                guard let name = dataDescription!["Name"] as? String else {
                    return
                }
                let nm = name
                guard let phone = dataDescription!["Phone"] as? String else {
                    return
                }
                let pn = phone
                guard let addr = dataDescription!["Address"] as? String else {
                    return
                }
                let ad = addr
                    // 6
                    // Create a GMSCameraPosition that tells the map to display the
                    // coordinate at zoom level 6.
                    // Creates a marker in the center of the map.
                    let marker6 = GMSMarker()
                    marker6.position = CLLocationCoordinate2D(latitude: lat , longitude: lon)
                    marker6.title = ct
                    marker6.snippet = "Name: " + String(nm) + "\nPhone: " + String(pn) + "\nAddress: " + String(ad) + "\n"
                    marker6.map = mapView
            }
        }
    }
}

