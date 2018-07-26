//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Linh Bouniol on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {

    // MARK: - Properties
    
    var paintingController = PaintingController()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }

    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        
        // Cast the cell as PaintingTableViewCell
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return paintingCell
        
    }
    
    // MARK: - PaintingTableViewCellDelegate
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let index = tableView.indexPath(for: cell) else { return }
        
        let painting = paintingController.paintings[index.row]
//        let painting = cell.painting!
        
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [index], with: .automatic)
    }
    
    
}
