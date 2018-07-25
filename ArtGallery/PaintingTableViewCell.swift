//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Linh Bouniol on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var paintingView: UIImageView!
    @IBOutlet var likeUnlikeButton: UIButton!
    
    @IBAction func likeUnlikeButtonTapped(_ sender: Any) {
        
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        
        paintingView.image = painting.image
        
        // button title
        
    }
}
