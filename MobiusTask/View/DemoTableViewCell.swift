//
//  DemoTableViewCell.swift
//  MobiusTask
//
//  Created by Kruti Trivedi on 17/12/20.
//  Copyright © 2020 Archan Mehta. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

    @IBOutlet var lblBonusExpiry: UILabel!
    @IBOutlet var lblWagerRelease: UILabel!
    @IBOutlet var lblOtcPercent: UILabel!
    @IBOutlet var wagered_percent: UILabel!
    @IBOutlet var lblSlabMinMax: UILabel!
    @IBOutlet var lblSlab: UILabel!
    @IBOutlet var lblSlabMin: UILabel!
    @IBOutlet var lblValidUntil: UILabel!
    @IBOutlet var lblMaxPercentage: UILabel!
    @IBOutlet var lblRibbonmsg: UILabel!
    @IBOutlet var lblCode: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
