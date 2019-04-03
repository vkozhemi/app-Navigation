//
//  DataStruct.swift
//  D05
//
//  Created by Volodymyr KOZHEMIAKIN on 1/22/19.
//  Copyright © 2019 Volodymyr KOZHEMIAKIN. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import MapKit

class Address: NSObject, MKAnnotation{
    let title: String?
    let locationName: String
    let coordinate: CLLocationCoordinate2D
    let color : UIColor
    
    init(title: String, locationName: String, coordinate: CLLocationCoordinate2D, color: UIColor) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        self.color = color
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}

struct Data {
    static var places : [(Address)] = [
        (Address(title: "Ecole 42", locationName: "42 shcool, Paris, France", coordinate: CLLocationCoordinate2D(latitude: 48.8965812, longitude: 2.3161873), color: UIColor.red)),
        (Address(title: "Unit Factory", locationName: "Unit City, Kiev, Ukraine", coordinate: CLLocationCoordinate2D(latitude: 50.469106, longitude: 30.462304), color: UIColor.green)),
        (Address(title: "Silicon valley", locationName: "Silicon Valley, California, USA", coordinate: CLLocationCoordinate2D(latitude: 37.418676, longitude: -122.079966), color: UIColor.yellow))
    ]
}
