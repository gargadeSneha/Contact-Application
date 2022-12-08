//
//  ViewController.swift
//  TabBar
//
//  Created by TryCatch Classes on 19/10/22.
//

import UIKit

class RecentVC: UIViewController {

    @IBOutlet weak var searchBar1: UISearchBar!
    @IBOutlet weak var recentlabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var tempdata: [String]!
    
    var name = ["Akash Sawalkar",
                "Sneha Gargade",
                "Omkar Padiyar",
                "Krishna Panchal",
                "Amita More",
                "Sakshi Modak",
                "Om Gargade",
                "Rushi Gargade",
                "Uttam Lalge",
                "Diya Lalge",
                "Aadishri Lalge",
                "Sagar Sawalkar",
                "Bhakti Yerudakar",
                "Akshta Mane",
                "Ankita Gawade",
                "Priti Jadhav",
                "Shivam Dubey",
                "Rutika Patil",
                "Jayesh Rathode",
                "Neha Patil"]
    
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
    
   // var callImg = ["phone.arrow.down.left.fill"]
                  /* "phone.fill.arrow.up.right",
                   "phone.arrow.down.left.fill",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.arrow.down.left.fill",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.arrow.down.left.fill",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.arrow.down.left.fill",
                   "phone.fill.arrow.up.right",
                   "phone.fill.arrow.up.right",
                   "phone.arrow.down.left.fill",
                   "phone.fill.arrow.up.right",
                   ]  */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempdata = name
        searchBar1.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }
}
extension RecentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecentTVC
        cell.nameLable.text = name[indexPath.row]
        cell.numberLable.text = number[indexPath.row]
    //    cell.calliconImg.image = UIImage(named: "phone.arrow.down.left.fill")
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      /*  let vc = storyboard?.instantiateViewController(withIdentifier: "CurrentCallVC") as! CurrentCallVC
        
        vc.name = name[indexPath.row]
        vc.no = number[indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true) */
        
        
        let alert = UIAlertController(title: "CALL", message: "Select SIM" , preferredStyle: .actionSheet)
        
        let SIM1 = UIAlertAction(title: "SIM 1", style: .default) { [self] _ in
            print("sim1")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "CurrentCallVC") as! CurrentCallVC
            
            vc.name = self.name[indexPath.row]
            vc.no = self.number[indexPath.row]
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }
        let SIM2 = UIAlertAction(title: "SIM 2", style: .default) { _ in
            print("sim2")
        }
        alert.addAction(SIM1)
        alert.addAction(SIM2)
        present(alert, animated: true)
        
    }
    
    
}
extension RecentVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        name = []
        
        if searchText == ""
        {
            name = tempdata
        } else {
            for word in tempdata
            {
                if word.lowercased().contains(searchText.lowercased())
                {
                    name.append(word)
                }
            }
        }
        
        self.tableView.reloadData()
    }
}
    
