//
//  ContactVC.swift
//  TabBar
//
//  Created by TryCatch Classes on 20/10/22.
//

import UIKit

class ContactVC: UIViewController {

    @IBOutlet weak var searchBar2: UISearchBar!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactTableView: UITableView!
    
    @IBOutlet weak var starBtnTapped: UIBarButtonItem!
    
    var list = [String]()
    var tempdata: [String]!
    
    var contName = ["Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge",
                    "Sneha Gargade",
                    "Omkar Padiyar",
                    "Aadishri Lalge",
                    "Akash Sawalkar",
                    "Akshta Mane",
                    "Amita More",
                    "Ankita Gawade",
                    "Bhavesh Sign",
                    "Bhavna Patel",
                    "Chitra Lalge"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempdata = contName
        searchBar2.delegate = self
        contactTableView.dataSource = self
        contactTableView.delegate = self

    }
    
    
    @IBAction func addToFavorites(_ sender: UIBarButtonItem) {
         
       
    }
    
}
extension ContactVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactTableView.dequeueReusableCell(withIdentifier: "contactcell", for: indexPath) as! ContactTVC
        cell.contactCellLabel.text = contName[indexPath.row]
        cell.likeBtn.tag = indexPath.row
        cell.likeBtn.addTarget(self, action: #selector(saveTapped(_:)), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CallDetailsVC") as! CallDetailsVC
        vc.name = contName[indexPath.row]
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
  
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                contName.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.reloadData()
            }
    }

    @objc func saveTapped(_ sender: UIButton){
        sender.isSelected.toggle()
        
        let index = sender.tag
        list.append(contName[index])
        
        UserDefaults.standard.set(list, forKey: "SaveArray")
        let savedText = UserDefaults.standard.object(forKey: "SaveArray") as! [String]
        print(savedText)
    }
    
}
extension ContactVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        contName = []
        
        if searchText == ""
        {
            contName = tempdata
        }
        else
        {
            for word in tempdata
            {
                if word.lowercased().contains(searchText.lowercased())
                {
                    contName.append(word)
                }
            }
        }
        self.contactTableView.reloadData()
    }
}
