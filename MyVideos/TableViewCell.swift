//
//  TableViewCell.swift
//  MyVideos
//
//  Created by Nick on 28/04/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var imageViewLabel: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        imageViewLabel.image = UIImage(named: video.thumbnailFileName)
        userNameLabel.text = video.authorName
        imageViewLabel.layer.cornerRadius = 8.0
        imageViewLabel.layer.masksToBounds = true
    }

}
