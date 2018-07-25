//
//  Painting.swift
//  ArtGallery
//
//  Created by Linh Bouniol on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool = true
    
    init(image: UIImage, isLiked: Bool) {
        self.image = image
        self.isLiked = isLiked
    }
    
}
