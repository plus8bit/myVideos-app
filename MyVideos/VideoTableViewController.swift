//
//  VideoTableViewController.swift
//  MyVideos
//
//  Created by Nick on 28/04/2019.
//  Copyright © 2019 Nick Danilov. All rights reserved.
//

import UIKit

class VideoTableViewController: UITableViewController {
    
    var videos = Video.fetchVideos()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath)
        let video = videos[indexPath.row]
        cell.textLabel?.text = video.authorName
        

        return cell
    }

}
