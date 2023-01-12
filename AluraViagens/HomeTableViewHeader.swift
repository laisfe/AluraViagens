//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Lais on 09/01/23.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: IBOutlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
}
