//
//  HomeTableViewCell.swift
//  RSS_VNExpress
//
//  Created by masterdev3_ios on 7/16/21.
//

import UIKit
import SDWebImage
class HomeTableViewCell: UITableViewCell {
    var item: Item?
    var isChoose  = false
    var presentShare : (() -> Void)?
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pubDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var numCmtLabel: UILabel!
    @IBOutlet weak var bigView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    @IBAction func shareBtn(_ sender: Any) {
        if let presentShare = presentShare{
            presentShare()
        }
    }
    func initUI(item :Item){
        descriptionLabel.text = item.descriptionNews?.description
        titleLabel.text = item.title
        pubDateLabel.text = item.pubDate
        numCmtLabel.text = item.numCmt
        let imgURL =  item.descriptionNews?.urlImg
        if imgURL != ""{
            pic.sd_setImage(with:URL(string: imgURL!), completed: nil)
        }
        else{
            pic.image = UIImage(named: "img")
            
        }
        bigView.layer.cornerRadius = 10
        self.bigView.layer.shadowColor = UIColor.black.cgColor
        self.bigView.layer.shadowOpacity = 0.5
        self.bigView.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.bigView.layer.shadowRadius = 4.0
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
