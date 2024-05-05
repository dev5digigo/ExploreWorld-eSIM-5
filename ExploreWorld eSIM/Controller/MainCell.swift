//
//  MainCell.swift
//  ExploreWorld eSIM
//
//  Created by DREAMWORLD on 03/05/24.
//

import UIKit

class MainCell1: UITableViewCell {

    @IBOutlet weak var viewCountryIcon: UIView!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var imgCountryIc: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setdata()

        // Configure the view for the selected state
    }
    
    func setdata() {
        
        setviewBorder(view: viewCountryIcon)
        setRoundimgIc(ImgView: imgCountryIc)
    }

}
