//
//  PostCell.swift
//  Tubelio
//
//  Created by Sikander Zeb on 3/13/18.
//  Copyright © 2018 Sikander. All rights reserved.
//

import UIKit
import AVKit

protocol PostCellProtocol : NSObjectProtocol {
    func playVideoForCell(with indexPath : IndexPath)
}

class PostCell: UITableViewCell {
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var videoView: UIView!
    
    @IBOutlet weak var likes: UILabel!
    @IBOutlet weak var comments: UILabel!
    @IBOutlet weak var views: UILabel!
    
    
    var passedURL : URL! = nil
    var indexPath : IndexPath! = nil
    var delegate : PostCellProtocol? = nil
    var post: Post? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configCell(with post : Post, shouldPlay : Bool) {
        //something like this
        
        if views != nil {
            views.text = "\(post.views.count) views"
            comments.text = "\(post.comments.count) comments"
            likes.text = "\(post.likes.count) High Fives"
        }
        
        
        //self.username.text = post.user?.name
        //self.caption.text = post.caption
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func playOrPauseVideo(_ sender: UIButton) {
        self.delegate?.playVideoForCell(with: self.indexPath)
        //add playerController view as subview to cell
    }
    
    override func prepareForReuse() {
        //this way once user scrolls player will pause
        
    }
}
