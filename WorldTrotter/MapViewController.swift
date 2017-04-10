//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Rodrigo Carballo on 4/5/17.
//  Copyright © 2017 Rodrigo Carballo. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView : MKMapView!
   
    
    override func loadView() {
        //create a map view
        mapView = MKMapView();
        
        view = mapView;
        
        let button = UIButton(frame: CGRect(x: 15, y: 75, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Zoom", for: UIControlState.normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self,
                                   action: #selector(MapViewController.mapTypeChanged(_:)),
                                   for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        self.view.addSubview(button)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        
        
    }
    
    func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
}
