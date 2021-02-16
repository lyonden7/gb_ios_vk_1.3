//
//  NewsCell.swift
//  VKapp_GB_VasilevD
//
//  Created by Денис Васильев on 28.07.2020.
//  Copyright © 2020 Denis Vasilev. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet private weak var ownerImageView: UIImageView!
    @IBOutlet private weak var ownerNameLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var newsTextLabel: UILabel!
    @IBOutlet private weak var newsImageView: UIImageView!
    @IBOutlet private weak var likeButton: UIButton!
    @IBOutlet private weak var likeLabel: UILabel!
    @IBOutlet private weak var commentsButton: UIButton!
    @IBOutlet private weak var commentsLabel: UILabel!
    @IBOutlet private weak var shareButton: UIButton!
    @IBOutlet private weak var shareLabel: UILabel!
    @IBOutlet private weak var viewedImageView: UIImageView!
    @IBOutlet private weak var viewedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    func configure(with news: News, owner: Owner) {
//        // TODO: need configure
//    }
    
}
