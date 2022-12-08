//
//  CallDetailsVC.swift
//  TabBar
//  
//  Created by TryCatch Classes on 21/10/22.
//

import UIKit

class CallDetailsVC: UIViewController {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var nolabel: UILabel!
    
    @IBOutlet weak var videoLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var socialLabel: UILabel!
    @IBOutlet weak var voiceLabel: UILabel!
    
    
    @IBOutlet weak var teleLabel: UILabel!
    
    @IBOutlet weak var msg1Label: UILabel!
    
    @IBOutlet weak var videoLabel1: UILabel!
    
    @IBOutlet weak var voice1Label: UILabel!
 
    
    @IBOutlet weak var detail1Label: UILabel!
    @IBOutlet weak var detail2Label: UILabel!
    @IBOutlet weak var detail3Label: UILabel!
    @IBOutlet weak var detail4Label: UILabel!
    
    
    
    
    var name = ""
    
    /*
    var number = ["+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653",
                  "+912457897653"]
     */
   
    override func viewDidLoad() {
        super.viewDidLoad()

        namelabel.text = name
        nolabel.text = " +912457897653"
        socialLabel.text = "Whatsapp"
        msgLabel.text = "Message +912457897653"
        videoLabel.text = "Voice call +912457897653"
        voiceLabel.text = "Video call +912457897653"
        
        teleLabel.text = "Telegram"
        msg1Label.text = "Message +912457897653"
        videoLabel1.text = "Voice call +912457897653"
        voice1Label.text = "Video call +912457897653"
        
        detail1Label.text = "Share Contact"
        detail2Label.text = "Add to VIP Contacts"
        detail3Label.text = "Add to Blacklist"
        detail4Label.text = "Delete Contact"
    }
    

   

}
