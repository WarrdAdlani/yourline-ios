//
//  HomeSummaryCell.swift
//  YourLine
//
//  Created by Warrd Adlani on 29/08/2022.
//

import UIKit
import Presentation
import Domain

struct HomeSummaryCellViewModel: CellViewModelling {
    public let model: HomeModel
    
    internal init(model: HomeModel) {
        self.model = model
    }
}

class HomeSummaryCell: UITableViewCell {

    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var summaryLabel: UILabel!
    
    @IBOutlet private weak var pointsImageView: UIImageView!
    @IBOutlet private weak var pointsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        containerView.layer.shadowColor = UIColor.black.cgColor
//        containerView.layer.shadowOpacity = 1
//        containerView.layer.shadowOffset = CGSize(width: 4, height: 4)
//        containerView.layer.shadowRadius = 10
        
        dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func dropShadow(scale: Bool = true) {
        containerView.layer.masksToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.3
        containerView.layer.shadowOffset = CGSize(width: 0, height: 4)
        containerView.layer.shadowRadius = 4
    }
}

extension HomeSummaryCell: CellPresentable {
    
    func setupCell(with viewModel: CellViewModelling?, delegate: CellDelegate?) {
        guard let viewModel = viewModel as? HomeSummaryCellViewModel else {
            return
        }
    }
}
