//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Linh Bouniol on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingController {
    
    var paintings: [Painting] = []
    
    func loadPaintingFromAssets() {
        for i in 1...12 {
            let imageName = "Image\(i)"
            guard let image = UIImage(named: imageName) else { return }
            
            let painting = Painting(image: image, isLiked: true)
            paintings.append(painting)
        }
        
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
    
    init() {
        loadPaintingFromAssets()
    }
}
