//
//  CollectionCell.swift
//  Youtub
//
//  Created by Anand tellabati on 10/09/16.
//  Copyright © 2016 Anand tellabati. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class CollectionCell: UICollectionViewCell,MKMapViewDelegate {
    
    
    var insert:Insert! {
        didSet {
         updateUI()
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mapKit: MKMapView!
    @IBOutlet weak var addressLabel: UITextView!
    var coordinate:CLLocationCoordinate2D!
 
}

extension CollectionCell{

   private func updateUI(){
    nameLabel!.text = insert.name
    addressLabel!.text = insert.adrress

    
    if let lat:Double = insert.lat!, lng:Double = insert.long! {
        mapKit.delegate = self

        let location = CLLocation(latitude: lat, longitude: lng)
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 250.0, 250.0)
          mapKit.setRegion(coordinateRegion, animated: false)
        let pin = MKPointAnnotation()
        pin.coordinate = location.coordinate
        pin.title = insert.name!
        pin.subtitle = insert.adrress!
        mapKit.addAnnotation(pin)
    }
    
  }
}
