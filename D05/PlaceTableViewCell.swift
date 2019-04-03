//
//  PlaceTableViewCell.swift
//  D05
//
//  Created by Volodymyr KOZHEMIAKIN on 1/22/19.
//  Copyright © 2019 Volodymyr KOZHEMIAKIN. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var NameLabel: UILabel!
    
    var place : Address? {
        didSet{
            if let p = place {
                NameLabel?.text = String(p.title!)
            }
        }
    }
}
