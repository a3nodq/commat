//
//  ItemCollectionViewCell.swift
//  Walkthrough
//
//  Created by bushra  on 04/08/1443 AH.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var ImageItem: UIImageView!
    
    func setupCell(images: UIImage){
        
        ImageItem.image = images
        
        
        
    }
    
    
    
    
}
