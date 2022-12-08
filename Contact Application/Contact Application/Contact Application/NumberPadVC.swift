//
//  NumberPadVC.swift
//  TabBar
//
//  Created by TryCatch on 14/11/22.
//

import UIKit

class NumberPadVC: UIViewController {

    @IBOutlet weak var textFld: UITextField!
    @IBOutlet weak var callBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFld.becomeFirstResponder()
        textFld.delegate = self
//        callBtn.isUserInteractionEnabled = true
//        let tap = UITapGestureRecognizer(target: self, action: #selector(sbmtBtnTapped(sender:)))
//        callBtn.addGestureRecognizer(tap)
        
    }
    
    @objc func sbmtBtnTapped(sender: UITapGestureRecognizer){
       
        
       
        
    }
    @IBAction func btnTapped(_ sender: UIButton) {
        if (textFld.text?.isEmpty ?? false) {
            let alert = UIAlertController(title: nil, message: "Invalid number", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            
        } else {
            self.navigationController?.popViewController(animated: true)
            
        }
    }

}
extension NumberPadVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField == textFld) {
          let currrentCharacterCount = textField.text?.count ?? 0
          if range.length + range.location > currrentCharacterCount {
            return false
          }
          let newLength = currrentCharacterCount + string.count - range.length
          return newLength <= 10
        }
        else{
        return true
        }
    }
}
