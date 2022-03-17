//
//  TypeOFCollectionViewCell.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 17/03/2022.
//

import UIKit

class TypeOFCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var TypeOFresturantPhoto: UIImageView!
    

    func setupcollection(name:String , photo: UIImage){
        lable.text = name
        TypeOFresturantPhoto.image = photo
    }
}
