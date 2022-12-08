//
//  ContactTVC.swift
//  TabBar
//
//  Created by TryCatch Classes on 20/10/22.
//

import UIKit

class ContactTVC: UITableViewCell {

    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var contactCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    @IBAction func likeBtnTapped(_ sender: UIButton) {
        likeBtn.addTarget(self, action: #selector(likeTapped(_:)), for: .touchUpInside)
        
    }
    @objc func likeTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
}
