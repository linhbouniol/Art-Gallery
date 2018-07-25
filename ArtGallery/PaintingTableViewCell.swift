//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Linh Bouniol on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var paintingView: UIImageView!
    @IBOutlet var likeUnlikeButton: UIButton!
    
    @IBAction func likeUnlikeButtonTapped(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        
        paintingView.image = painting.image
        
        if painting.isLiked {
            likeUnlikeButton.setTitle("Unlike", for: .normal)
        } else if !painting.isLiked {
            likeUnlikeButton.setTitle("Like", for: .normal)
        }
        
    }
}

