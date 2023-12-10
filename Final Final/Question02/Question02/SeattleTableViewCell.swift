//
//  SeattleTableViewCell.swift
//  Question02
//
//  Created by llc on 12/9/23.
//

import UIKit

class SeattleTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblText: UILabel!
}
