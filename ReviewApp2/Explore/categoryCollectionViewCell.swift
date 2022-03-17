//
//  categoryCollectionViewCell.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class categoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblname: UIButton!
    @IBOutlet weak var imgResturant: UIImageView!
    
    func setupCell (photo :UIImage){
        imgResturant.image = photo
//        image
    }
}
